package com.weather.scheduler;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.net.HttpURLConnection;
import org.json.JSONArray;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import redis.clients.jedis.Jedis;

public class WeatherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static String weatherDaily1 = "https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-D0047-091?Authorization=CWB-004144CD-183A-4591-ADA1-2BD900E8CF63";
	public static String weatherDaily2 = "https://opendata.cwb.gov.tw/fileapi/v1/opendataapi/F-C0032-005?Authorization=CWB-7F16E781-C330-42B7-94E0-23CDEE9FDC79&downloadType=WEB&format=JSON";
	// 排成器
	Timer timer = new Timer();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");

		// initialize
		if ("init".equals(action)) {
			Jedis jedis = new Jedis("localhost", 6379);
			jedis.auth("123456");
			String jsonStr = jedis.get("weather");
			JSONObject jsonObject = new JSONObject(jsonStr);
			out.println(jsonObject);
		}

		// SearchArea
		if ("searchArea".equals(action)) {
			// 接收參數
			String paramArea = request.getParameter("area");
			List<String> areaList = null;
			if ("南部".equals(paramArea)) {
				areaList = Arrays.asList("臺南市", "高雄市", "屏東縣");
			}
			if ("北部".equals(paramArea)) {
				areaList = Arrays.asList("基隆市", "臺北市", "新北市", "桃園市", "新竹市", "新竹縣", "苗栗縣");
			}
			if ("中部".equals(paramArea)) {
				areaList = Arrays.asList("臺中市", "彰化縣", "南投縣", "雲林縣", "嘉義市", "嘉義縣");
			}
			if ("東部".equals(paramArea)) {
				areaList = Arrays.asList("宜蘭縣", "花蓮縣", "臺東縣");
			}
			if ("外島".equals(paramArea)) {
				areaList = Arrays.asList("澎湖縣", "金門縣", "連江縣");
			}

			Jedis jedis = new Jedis("localhost", 6379);
			jedis.auth("123456");
			// redis取出的資料
			String jsonStr = jedis.get("weather");
			JSONObject jsonObject = new JSONObject(jsonStr);
			JSONArray area = jsonObject.getJSONArray("area");
			JSONArray date = jsonObject.getJSONArray("date");
			JSONArray WeatherList = jsonObject.getJSONArray("WeatherList");
			JSONArray parameterNameList = jsonObject.getJSONArray("parameterNameList");
			JSONArray parameterValueList = jsonObject.getJSONArray("parameterValueList");

			// 回傳的LIST
			List<String> WeatherListS = new LinkedList<>();
			List<String> areaS = new ArrayList<>();
			List<String> dateS = new ArrayList<>();
			List<String> parameterNameListS = new LinkedList<>();
			List<String> parameterValueListS = new LinkedList<>();

			// 計數器(比對成功加入LIST)
			int areaCount = 0;
			int WeatherCount = 0;
			for (int i = 0; i < WeatherList.length(); i++) {
				String areaStr = area.getString(areaCount);
				String WeatherStr = WeatherList.getString(WeatherCount);
				String parameterNameStr = parameterNameList.getString(WeatherCount);
				String parameterValueStr = parameterValueList.getString(WeatherCount);
				if (areaList.contains(areaStr)) {
					areaS.add(areaStr);
					for (int k = 0; k < date.length(); k++) {
						WeatherListS.add(WeatherStr);
						parameterNameListS.add(parameterNameStr);
						parameterValueListS.add(parameterValueStr);
						WeatherCount++;
					}
					areaCount++;
				} else {
					i += 6;
					WeatherCount += 6;
					areaCount++;
				}

				if (areaCount == area.length()) {
					break;
				}
			}
			// 時間add回來
			for (int i = 0; i < date.length(); i++) {
				String dateStr = date.getString(i);
				dateS.add(dateStr);
			}

			// 回傳JSON
			HashMap map = new HashMap();

			map.put("WeatherList", WeatherListS);
			map.put("area", areaS);
			map.put("date", dateS);
			map.put("parameterNameList", parameterNameListS);
			map.put("parameterValueList", parameterValueListS);
			JSONObject resJson = new JSONObject(map);
			out.println(resJson);

		}

	}

	@Override
	public void init() throws ServletException {
		TimerTask task = new TimerTask() {
			@Override
			public void run() {
				Jedis jedis = new Jedis("localhost", 6379);
				jedis.auth("123456");
				HashMap weather1 = null;
				HashMap weather2 = null;
				try {
					weather1 = handle1(weatherDaily1);
					weather2 = handle2(weatherDaily2, weather1);
				} catch (IOException e) {
					e.printStackTrace();
				}
				JSONObject JSONObject = new JSONObject(weather2);
				jedis.set("weather",JSONObject.toString());
			}
		};
		Calendar cal = new GregorianCalendar(2020,Calendar.JULY,1,23,00,00);
		timer.schedule(task, cal.getTime(),1000*60*60*24);
	}
	
	@Override
	public void destroy(){
		timer.cancel();
	}

	public HashMap handle1(String url) throws IOException {
//		回傳的LIST
		HashMap map = new HashMap();
		List<String> WeatherList = new LinkedList<>();
		HashSet<String> area = new LinkedHashSet<>();
		HashSet<String> date = new LinkedHashSet<>();
		Gson gson = new Gson();
		// 處理資料
		JSONObject obj;
		String jsonStr = jsonStr(url);
		obj = new JSONObject(jsonStr);
		JSONObject recordsObj = obj.getJSONObject("records");
		JSONArray locationsArr = recordsObj.getJSONArray("locations");
		JSONObject locations0 = locationsArr.getJSONObject(0);
		JSONArray locationArr = locations0.getJSONArray("location");
		for (int i = 0; i < locationArr.length(); i++) {
			JSONObject locationObj = locationArr.getJSONObject(i);
			// 取地區名子
			String locationName = locationObj.getString("locationName");
			JSONArray weatherElementArr = locationObj.getJSONArray("weatherElement");
			JSONObject weatherElement10 = weatherElementArr.getJSONObject(10);// 取第10個weatherElement天氣預報綜合描述
			JSONArray timeArr = weatherElement10.getJSONArray("time");
			for (int k = 0; k < timeArr.length(); k++) {
				// 取時間
				JSONObject time0 = timeArr.getJSONObject(k);
				String startTime = time0.getString("startTime");
				// 切字串剩下早上
				String startTimestr = startTime.substring(11);
				if (!(startTimestr.equals("06:00:00"))) {
					continue;
				}
				// 取降雨機率
				JSONArray elementValueArr = time0.getJSONArray("elementValue");
				JSONObject elementValue0 = elementValueArr.getJSONObject(0);
				String value = elementValue0.getString("value");
				String measures = elementValue0.getString("measures");

				WeatherList.add(value);
				area.add(locationName);
				date.add(startTime);
			}
		}
		map.put("WeatherList", WeatherList);
		map.put("area", area);
		map.put("date", date);
		return map;
	};

	public HashMap handle2(String url, HashMap map) throws IOException {
//		回傳的LIST
		JSONObject obj;
		String jsonStr = jsonStr(url);
		obj = new JSONObject(jsonStr);

		// 回傳的LIST
		List<String> parameterNameList = new LinkedList<>();
		List<String> parameterValueList = new LinkedList<>();

		JSONObject cwbopendata = obj.getJSONObject("cwbopendata");
		JSONObject datasetobj = cwbopendata.getJSONObject("dataset");
		JSONArray locationArr = datasetobj.getJSONArray("location");
		for (int i = 0; i < locationArr.length(); i++) {
			JSONObject locationObj = locationArr.getJSONObject(i);
			// 取地區名子
			JSONArray weatherElement = locationObj.getJSONArray("weatherElement");
			JSONObject weatherObj = weatherElement.getJSONObject(0);
			JSONArray timeArr = weatherObj.getJSONArray("time");
			for (int k = 0; k < timeArr.length(); k++) {
				JSONObject timeObj = timeArr.getJSONObject(k);
				String startTime = timeObj.getString("startTime");
				JSONObject parameterobj = timeObj.getJSONObject("parameter");
				if (startTime.indexOf("06:00:00") < 0) {
					continue;
				}
				// 取參數名
				String parameterName = parameterobj.getString("parameterName");
				// 取編號
				String parameterValue = parameterobj.getString("parameterValue");
				parameterNameList.add(parameterName);
				parameterValueList.add(parameterValue);
			}
		}
		map.put("parameterNameList", parameterNameList);
		map.put("parameterValueList", parameterValueList);
		return map;
	};

	public static String jsonStr(String URL) throws IOException {
		URL url = new URL(URL);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		StringBuilder sb = new StringBuilder();
		con.setRequestMethod("GET");
		con.setUseCaches(false);

		InputStream is = con.getInputStream();
		InputStreamReader isr = new InputStreamReader(is);
		BufferedReader br = new BufferedReader(isr);

		String str;
		while ((str = br.readLine()) != null) {
			sb.append(str);
		}
		br.close();
		isr.close();
		is.close();

		return sb.toString();
	}

}

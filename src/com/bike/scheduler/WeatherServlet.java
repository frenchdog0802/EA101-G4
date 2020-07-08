package com.bike.scheduler;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

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
		
		if("init".equals(action)) {
			Jedis jedis = new Jedis("localhost", 6379);
			jedis.auth("123456");
			Set<String> jsonSet =  jedis.smembers("weather");
			String jsonStr = null;
			for(String string:jsonSet) {
				jsonStr = string;
			}
			JSONObject jsonObject = new JSONObject(jsonStr);
			out.println(jsonObject);
		}
		
	}

	@Override
	public void init() throws ServletException {
		Jedis jedis = new Jedis("localhost", 6379);
		jedis.auth("123456");
		HashMap weather1 = null;
		HashMap weather2 = null;
		try {
			weather1 = handle1(weatherDaily1);
			weather2 = handle2(weatherDaily2,weather1);
		} catch (IOException e) {
			e.printStackTrace();
		}
		JSONObject JSONObject = new JSONObject(weather2);
		jedis.sadd("weather", JSONObject.toString());
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
		map.put("WeatherList" , WeatherList);
		map.put("area",area);
		map.put("date",date);
		return map;
	};
	
	public HashMap handle2(String url ,HashMap map) throws IOException {
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
		map.put("parameterNameList" , parameterNameList);
		map.put("parameterValueList",parameterValueList);
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

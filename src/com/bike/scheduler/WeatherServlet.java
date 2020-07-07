package com.bike.scheduler;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
<<<<<<< HEAD
import java.util.ArrayList;
=======
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
>>>>>>> 4e8740e032a2ff3a5bf7f4a6b983aec30ee83c62
import java.util.LinkedList;
import java.util.List;

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

	public static String weatherDaily = "https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-D0047-091?Authorization=CWB-004144CD-183A-4591-ADA1-2BD900E8CF63";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Jedis jedis = new Jedis("localhost", 6379);
		jedis.auth("123456");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		Gson gson = new Gson();

		// 從網頁ajax過來的資料
		if ("init".equals(action)) {
			if(jedis.sismember("weatherObj", "finish")) {
				String jsonStr = null;
				for(String str :jedis.smembers("weatherObj")) {
					jsonStr = str;
				}
				JSONObject obj = new JSONObject(jsonStr);
				out.println(obj);
			}else {
				String url = "https://opendata.cwb.gov.tw/fileapi/v1/opendataapi/F-C0032-005?Authorization=CWB-7F16E781-C330-42B7-94E0-23CDEE9FDC79&downloadType=WEB&format=JSON";
				HashMap map =  new HashMap();
				map.put("url",url);
				JSONObject resJSONObject = new JSONObject(map);
				out.println(resJSONObject);
			}
			
			if("getURL".equals(action)) {
//			// 回傳的LIST
//			List<String> parameterNameList = new LinkedList<>();
//			List<String> parameterValueList = new LinkedList<>();
//
//			String jsonStr = request.getParameter("jsonStr");
//			JSONObject obj = new JSONObject(jsonStr);
//			JSONObject cwbopendata = obj.getJSONObject("cwbopendata");
//			JSONObject datasetobj = cwbopendata.getJSONObject("dataset");
//			JSONArray locationArr = datasetobj.getJSONArray("location");
//			for (int i = 0; i < locationArr.length(); i++) {
//				JSONObject locationObj = locationArr.getJSONObject(i);
//				// 取地區名子
//				JSONArray weatherElement = locationObj.getJSONArray("weatherElement");
//				JSONObject weatherObj = weatherElement.getJSONObject(0);
//				JSONArray timeArr = weatherObj.getJSONArray("time");
//				for (int k = 0; k < timeArr.length(); k++) {
//					JSONObject timeObj = timeArr.getJSONObject(k);
//					String startTime = timeObj.getString("startTime");
//					JSONObject parameterobj = timeObj.getJSONObject("parameter");
//					if (startTime.indexOf("06:00:00") < 0) {
//						continue;
//					}
//					// 取參數名
//					String parameterName = parameterobj.getString("parameterName");
//					// 取編號
//					String parameterValue = parameterobj.getString("parameterValue");
//					parameterNameList.add(parameterName);
//					parameterValueList.add(parameterValue);
//
//				}
//			}
//			gosadd(parameterNameList, parameterValueList, jedis);
			}
		}

	}

	@Override
	public void init() throws ServletException {

	}

	public void gosadd(List<String> parameterNameList, List<String> parameterValueList, Jedis jedis)
			throws IOException {
//		回傳的LIST
		List<String> WeatherList = new LinkedList<>();
		HashSet<String> area = new LinkedHashSet<>();
		HashSet<String> date = new LinkedHashSet<>();
		Gson gson = new Gson();
		// 處理資料
		String jsonStr = jsonStr(weatherDaily);
		JSONObject obj;
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
		JsonArray weatherList = gson.toJsonTree(WeatherList).getAsJsonArray();
		JsonArray areaSet = gson.toJsonTree(area).getAsJsonArray();
		JsonArray dateSet = gson.toJsonTree(date).getAsJsonArray();
		JsonArray paramNameList = gson.toJsonTree(parameterNameList).getAsJsonArray();
		JsonArray paramValueList = gson.toJsonTree(parameterValueList).getAsJsonArray();
		JsonObject jsonObject = new JsonObject();
		jsonObject.add("weather", weatherList);
		jsonObject.add("areaSet", areaSet);
		jsonObject.add("dateSet", dateSet);
		jsonObject.add("paramNameList", paramNameList);
		jsonObject.add("paramValueList", paramValueList);
		jedis.sadd("weatherObj", jsonObject.toString());
		jedis.sadd("weatherObj", "finish");
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

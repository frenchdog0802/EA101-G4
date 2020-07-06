package com.bike.scheduler;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.HttpURLConnection;
import org.json.JSONArray;
import org.json.JSONObject;

import com.google.gson.Gson;

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
		Gson gson = new Gson();
		
		
		//redis 取出資料
		Jedis jedis = new Jedis("localhost", 6379);
		jedis.auth("123456");
		
		String  jsonStr = null;
		for (String str : jedis.smembers("weather")) {
			jsonStr = str;
		}
		
		List<WeatherVO> WeatherVOList = new LinkedList<>();
		//處理資料
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
				if (startTimestr.equals("18:00:00")) {
					continue;
				}
				// 取降雨機率
				JSONArray elementValueArr = time0.getJSONArray("elementValue");
				JSONObject elementValue0 = elementValueArr.getJSONObject(0);
				String value = elementValue0.getString("value");
				String measures = elementValue0.getString("measures");
				
				//新增到VO
				WeatherVO WeatherVO = new WeatherVO();
				WeatherVO.setLocationName(locationName);
				WeatherVO.setDate(startTime);
				WeatherVO.setValue(value);
				WeatherVOList.add(WeatherVO);
			}
		}
		String json = gson.toJson(WeatherVOList);
	}

	@Override
	public void init() throws ServletException {
		Jedis jedis = new Jedis("localhost", 6379);
		jedis.auth("123456");

		String jsonStr = null;
		try {
			jsonStr = jsonStr(weatherDaily);
		} catch (IOException e) {
			e.printStackTrace();
		}
		jedis.sadd("weather", jsonStr);
	}

	public static String jsonStr(String URL) throws IOException {

		URL url = new URL(weatherDaily);
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

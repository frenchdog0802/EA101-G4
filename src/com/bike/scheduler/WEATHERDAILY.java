package com.bike.scheduler;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import redis.clients.jedis.Jedis;

public class WEATHERDAILY {

	public static String weatherDaily = "https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-D0047-091?Authorization=CWB-004144CD-183A-4591-ADA1-2BD900E8CF63";

	public static void main(String[] args) throws IOException,JSONException {
		Jedis jedis = new Jedis("localhost", 6379);
		jedis.auth("123456");
		
		String jsonStr = jsonStr(weatherDaily);
		jedis.sadd("weather", jsonStr);
		
		
		
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
				
				//取天氣敘述 
//				for(int s =0 ; s<weatherElementArr.length();s++) {
//					JSONObject weatherElementNumobj = weatherElementArr.getJSONObject(s);
//					String description = weatherElementNumobj.getString("description");
//					System.out.println(s);
//					System.out.println(description);
//				}
				
					JSONObject weatherElement10 = weatherElementArr.getJSONObject(10);//取第10個weatherElement天氣預報綜合描述
					JSONArray timeArr = weatherElement10.getJSONArray("time");
					for (int k = 0; k < timeArr.length(); k++) {
						// 取時間
						JSONObject time0 = timeArr.getJSONObject(k);

						String startTime = time0.getString("startTime");
						//切字串剩下早上
						String startTimestr = startTime.substring(11);
						
						if(startTimestr.equals("18:00:00")) {
							continue ;
						}

						// 取降雨機率
						JSONArray elementValueArr = time0.getJSONArray("elementValue");
						JSONObject elementValue0 = elementValueArr.getJSONObject(0);
						
						String value = elementValue0.getString("value");
						String measures  = elementValue0.getString("measures");
						
						System.out.println(startTime+" : "+locationName+" : "+value);
					
				}
			}
		

//		setDate.forEach(name -> System.out.println(name));
//		setValue.forEach(name -> System.out.println(name));
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
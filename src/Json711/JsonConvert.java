package Json711;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.store.model.StoreService;
import com.store.model.StoreVO;

public class JsonConvert {
    public static void main(String[] args) {
        ArrayList<String> list = new ArrayList<String>(); 
        list.add("admin");
        //讀取json檔案
        String area[] = {"基隆市"};
//      "台北市","基隆市","新北市","宜蘭縣","新竹市","新竹縣","桃園市","苗栗縣","台中市","彰化縣","南投縣","嘉義市","嘉義縣","雲林縣"
//		,"台南市","高雄市","屏東縣","台東縣","花蓮縣","澎湖縣","金門縣","連江縣"
        for(int a=0 ;a<area.length;a++) {       
//        String filename = "D:\\EA101G4\\EA101G4_workspace\\git\\src\\Json711" + area[a] +".json";//路徑因人而異
        String filename = "C:\\G4project\\Git\\EA101-G4\\src\\Json711" + area[a] +".json";//路徑因人而異
        try {
            BufferedReader br = new BufferedReader(new FileReader(filename));
            String str=null;
            String data="";
            while((str=br.readLine())!=null) {
                data=data+str+"\n";
            }
            JSONObject dataJson = new JSONObject(data);
            JSONArray stores=dataJson.getJSONArray("stores");
            
            List<StoreVO> sList = new ArrayList<>();
            for (int i = 0; i < stores.length(); i++) {  
                JSONObject info = stores.getJSONObject(i); 
                String POIName = info.getString("POIName"); 
                String address = info.getString("Address");
                BigDecimal longi = info.getBigDecimal("X");
                BigDecimal lati = info.getBigDecimal("Y");
//                System.out.println(POIName+" "+address+" "+longi+" "+lati);
//                StoreService storeSvc = new StoreService();
//                storeSvc.addStore(POIName, address, longi, lati);
                
                StoreVO storeVO = new StoreVO();
        		storeVO.setStore_name(POIName);
        		storeVO.setStore_address(address);
        		storeVO.setLongitude(longi);
        		storeVO.setLatitude(lati);
        		sList.add(storeVO);
                br.close();              
            }
            StoreService storeSvc = new StoreService();
            int[] result = storeSvc.addStoreBatch(sList);
            for(int i = 0; i < result.length; i++) {
            	System.out.println("result: "+ result[i]);
            }
	        }catch (FileNotFoundException e) {
	            e.printStackTrace();
	        }catch (IOException e) {
	            e.printStackTrace();
	        }catch (JSONException e) {
	        	e.printStackTrace();
        	}    
        }
    }
}
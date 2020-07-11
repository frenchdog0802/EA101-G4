package com.store.model;

import java.math.BigDecimal;
import java.util.List;

public class StoreService {
	private StoreDAO_interface dao;
	public StoreService() {
		dao = new StoreDAO();
	}
	
	public StoreVO addStore(String store_name, String store_address, BigDecimal longitude, BigDecimal latitude) {
		
		StoreVO storeVO = new StoreVO();
		storeVO.setStore_name(store_name);
		storeVO.setSq_store_address_id(store_address);
		storeVO.setLongitude(longitude);
		storeVO.setLatitude(latitude);
		dao.insert(storeVO);
		
		return storeVO;
	}
	
	public StoreVO updateStore(String sq_address_id ,String store_name, String store_address, BigDecimal longitude, BigDecimal latitude) {
		
		StoreVO storeVO = new StoreVO();
		storeVO.setSq_store_address_id(sq_address_id);
		storeVO.setStore_name(store_name);
		storeVO.setSq_store_address_id(store_address);
		storeVO.setLongitude(longitude);
		storeVO.setLatitude(latitude);
		dao.update(storeVO);
		
		return storeVO;
	}
	
	public void deleteStore(String sq_address_id) {		
		dao.delete(sq_address_id);		
	}
	public List<String> getStoreName(String storeKey) {
		return dao.getShopName(storeKey);
	}
	public List<StoreVO> getAll(){
		return dao.getAll();
	}
	
}

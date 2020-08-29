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
		storeVO.setStore_address(store_address);
		storeVO.setLongitude(longitude);
		storeVO.setLatitude(latitude);
		dao.insert(storeVO);

		return storeVO;
	}

	public int[] addStoreBatch(List<StoreVO> list) {
		return dao.insertBatch(list);
	}


	public StoreVO getOneStore(String sq_address_id) {
		return dao.findByPrimaryKey(sq_address_id);
	}

	public List<StoreVO> getAll() {
		return dao.getAll();
	}
	public List<StoreVO> getPosition(String shopName) {

		return dao.getPosition(shopName);
	}
}

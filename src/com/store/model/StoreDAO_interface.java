package com.store.model;

import java.math.BigDecimal;
import java.util.*;

public interface StoreDAO_interface {
	public void insert(StoreVO storeVO);
	public StoreVO findByPrimaryKey(String sq_store_id);
	public List<StoreVO> getAll();
	
	public int[] insertBatch(List<StoreVO> list);
	public List<StoreVO> getPosition(String shopName);
}

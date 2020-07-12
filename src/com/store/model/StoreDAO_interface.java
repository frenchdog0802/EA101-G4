package com.store.model;

import java.math.BigDecimal;
import java.util.*;

public interface StoreDAO_interface {
	public void insert(StoreVO storeVO);
	public void update(StoreVO storeVO);
	public void delete(String sq_store_id);
	public List<String> getShopName(String storeKey);
	public List<StoreVO> getPosition(String shopName);
	public List<StoreVO> getAll();
}

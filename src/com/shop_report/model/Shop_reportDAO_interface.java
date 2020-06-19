package com.shop_report.model;

import java.util.*;

public interface Shop_reportDAO_interface {
	public void insert(Shop_reportVO shop_reportVO);
	public void update(Shop_reportVO shop_reportVO);
	public void delete(String sq_shop_report_id);
	public Shop_reportVO findByPrimaryKey(String sq_shop_report_id);
	public List<Shop_reportVO> getAll();
}

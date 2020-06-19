package com.shop_report.model;

import java.sql.*;
import java.util.*;

public class Shop_reportService {
	private Shop_reportDAO_interface dao;
	public Shop_reportService(){
		dao = new Shop_reportDAO();
	}
	public Shop_reportVO addReport(String sq_member_id, String sq_product_id, String shop_report_detail, Timestamp shop_report_time, Integer shop_report_status) {
		Shop_reportVO shop_reportVO = new Shop_reportVO();
		
		shop_reportVO.setSq_member_id(sq_member_id);
		shop_reportVO.setSq_product_id(sq_product_id);
		shop_reportVO.setShop_report_detial(shop_report_detail);
		shop_reportVO.setShop_report_time(shop_report_time);
		shop_reportVO.setShop_report_status(shop_report_status);
		dao.insert(shop_reportVO);
		
		return shop_reportVO;
	}
	public Shop_reportVO updateReport(String sq_shop_report_id, String sq_member_id, String sq_product_id, String shop_report_detail, Timestamp shop_report_time, Integer shop_report_status) {
		Shop_reportVO shop_reportVO = new Shop_reportVO();
		
		shop_reportVO.setSq_shop_report_id(sq_shop_report_id);
		shop_reportVO.setSq_member_id(sq_member_id);
		shop_reportVO.setSq_product_id(sq_product_id);
		shop_reportVO.setShop_report_detial(shop_report_detail);
		shop_reportVO.setShop_report_time(shop_report_time);
		shop_reportVO.setShop_report_status(shop_report_status);
		dao.update(shop_reportVO);
		
		return shop_reportVO;
	}
	public void deleteReport(String sq_shop_report_id) {
		dao.delete(sq_shop_report_id);
	}
	public Shop_reportVO getOneReport(String sq_shop_report_id) {
		return dao.findByPrimaryKey(sq_shop_report_id);
	}
	public List<Shop_reportVO> getAll(String sq_shop_report_id){
		return dao.getAll();
	}
}

package com.shop_product.model;

import java.sql.Date;
import java.util.List;
public class Shop_productService {
	
	private Shop_productDAO_interface dao;
	public Shop_productService() {
		dao = new Shop_productDAO();
	}
	
	public Shop_productVO addShop_product(String sq_brand_id, String product_kind_name, Integer stock_total, String product_name, Integer product_price, byte[] product_pic,
			String product_detail, String product_model, String product_color, Date add_date, String product_material, Integer product_status) {
		
		Shop_productVO productVO = new Shop_productVO();
		productVO.setSq_brand_id(sq_brand_id);
		productVO.setProduct_kind_name(product_kind_name);
		productVO.setStock_total(stock_total);
		productVO.setProduct_name(product_name);
		productVO.setProduct_price(product_price);
		productVO.setProduct_pic(product_pic);
		productVO.setProduct_detail(product_detail);
		productVO.setProduct_model(product_model);
		productVO.setProduct_color(product_color);
		productVO.setAdd_date(add_date);
		productVO.setProduct_material(product_material);
		productVO.setProduct_status(product_status);		
		dao.insert(productVO);
		
		return productVO;
	}
	
	public Shop_productVO updateShop_product(String sq_product_id, String sq_brand_id, String product_kind_name, Integer stock_total, String product_name, Integer product_price, byte[] product_pic,
			String product_detail, String product_model, String product_color, Date add_date, String product_material, Integer product_status) {
		
		Shop_productVO productVO = new Shop_productVO();
		productVO.setSq_brand_id(sq_brand_id);
		productVO.setProduct_kind_name(product_kind_name);
		productVO.setStock_total(stock_total);
		productVO.setProduct_name(product_name);
		productVO.setProduct_price(product_price);
		productVO.setProduct_pic(product_pic);
		productVO.setProduct_detail(product_detail);
		productVO.setProduct_model(product_model);
		productVO.setProduct_color(product_color);
		productVO.setAdd_date(add_date);
		productVO.setProduct_material(product_material);
		productVO.setProduct_status(product_status);
		
		productVO.setSq_product_id(sq_product_id);
		
		dao.update(productVO);
		
		return productVO;
	}
	
	public void deleteProduct(String sq_product_id) {
		dao.delete(sq_product_id);
	}
	public Shop_productVO getOneProduct(String sq_product_id) {
		return dao.findByPrimaryKey(sq_product_id);
	}
	public List<Shop_productVO> getAll(){
		return dao.getAll();
	}
}

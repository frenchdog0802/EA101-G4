package com.shop_product.model;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import com.product_stock.model.Product_stockVO;

public class Shop_productService {
	
	private Shop_productDAO_interface dao;
	public Shop_productService() {
		dao = new Shop_productDAO();
	}
	
	public void addShop_product(Shop_productVO productVO, List<Product_stockVO> stockList) {
				
		dao.insert(productVO, stockList);
	}
	
	public Shop_productVO updateShop_product(String sq_product_id, String sq_brand_id, String product_kind_name, String product_name, Integer product_price, byte[] product_pic,
			String product_detail, Date add_date, String product_material, Integer product_status) {
		
		Shop_productVO productVO = new Shop_productVO();
		productVO.setSq_brand_id(sq_brand_id);
		productVO.setProduct_kind_name(product_kind_name);
		productVO.setProduct_name(product_name);
		productVO.setProduct_price(product_price);
		productVO.setProduct_pic(product_pic);
		productVO.setProduct_detail(product_detail);
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
	public Shop_productVO getOneById(String sq_product_id) {
		return dao.findByPrimaryKey(sq_product_id);
	}
	public List<Shop_productVO> getAll(){
		return dao.getAll();
	}
	public List<Shop_productVO> findByKindName(String product_kind_name){
		return dao.findByKindName(product_kind_name);
	}
	public List<Shop_productVO> getAll(Map<String, String[]> map) {
		return dao.getAll(map);
	}
	public List<Shop_productVO> getSearchByText(String text){
		return dao.getSearchByText(text);
	}
	public String getCurrentKey() {
		return dao.getCurrentKey();
	}

}

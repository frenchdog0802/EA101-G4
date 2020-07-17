package com.product_stock.model;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Product_stockService {
	private Product_stockDAO_interface dao;
	public Product_stockService() {
		dao = new Product_stockDAO();
	}
public void addStock(Product_stockVO stockVO, java.sql.Connection con) {
	
		dao.insert(stockVO, con);
	}
	
	public Product_stockVO updateStock(String sq_stock_id, String sq_product_id, String product_color, String product_model, Integer stock_total) {
		
		Product_stockVO product_stockVO = new Product_stockVO();
		product_stockVO.setSq_product_id(sq_product_id);
		product_stockVO.setSq_product_id(sq_product_id);
		product_stockVO.setProduct_color(product_color);
		product_stockVO.setProduct_model(product_model);
		product_stockVO.setSq_stock_id(sq_stock_id);
		dao.update(product_stockVO);
		
		return dao.findByPrimaryKey(sq_stock_id);
	}
	
	public void deleteStock(String sq_stock_id) {
		dao.delete(sq_stock_id);
	}
	public Product_stockVO getOneStock(String sq_stock_id) {
		return dao.findByPrimaryKey(sq_stock_id);
	}
	public List<Product_stockVO> getAll(){
		return dao.getAll();
	}
	public List<String> getColor(String sq_product_id){
		List<Product_stockVO> list = dao.getByProductId(sq_product_id);
		Set<String> colorSet = new HashSet<String>();
	 	for(Product_stockVO vo : list) {
	 		colorSet.add(vo.getProduct_color());
	 	}
	 	List<String> colorList = new ArrayList<String>(colorSet);
		return colorList;
	}
	public List<String> getModel(String sq_product_id){
		List<Product_stockVO> list = dao.getByProductId(sq_product_id);
		Set<String> modelSet = new HashSet<String>();
	 	for(Product_stockVO vo : list) {
	 		modelSet.add(vo.getProduct_model());
	 	}
	 	List<String> modelList = new ArrayList<String>(modelSet);
		return modelList;
	}
}

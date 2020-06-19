package com.brand.model;

import java.util.List;

public class BrandService {
	
	private BrandDAO_interface dao;
	public BrandService() {
		dao = new BrandDAO();
	}
	
	public BrandVO addBrand(String brand_name, String brand_phone, String brand_address, byte[] brand_sign, String brand_detail) {
		
		BrandVO brandVO = new BrandVO();
		brandVO.setBrand_name(brand_name);
		brandVO.setBrand_phone(brand_phone);
		brandVO.setBrand_address(brand_address);
		brandVO.setBrand_sign(brand_sign);
		brandVO.setBrand_detail(brand_detail);
		dao.insert(brandVO);
		
		return brandVO;
	}
	
	public BrandVO updateBrand(String sq_brand_id, String brand_name, String brand_phone, String brand_address, byte[] brand_sign, String brand_detail) {
		
		BrandVO brandVO = new BrandVO();
		brandVO.setSq_brand_id(sq_brand_id);
		brandVO.setBrand_name(brand_name);
		brandVO.setBrand_phone(brand_phone);
		brandVO.setBrand_address(brand_address);
		brandVO.setBrand_sign(brand_sign);
		brandVO.setBrand_detail(brand_detail);
		dao.update(brandVO);
		
		return dao.findByPrimaryKey(sq_brand_id);
	}
	
	public void deleteBrand(String sq_brand_id) {
		dao.delete(sq_brand_id);
	}
	public BrandVO getOneBrand(String sq_brand_id) {
		return dao.findByPrimaryKey(sq_brand_id);
	}
	public List<BrandVO> getAll(){
		return dao.getAll();
	}
}

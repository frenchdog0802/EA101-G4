package com.brand.model;

import java.util.*;

public interface BrandDAO_interface {
	public void insert(BrandVO brandVO);
	public void update(BrandVO brandVO);
	public void delete(String sq_brand_id);
	public BrandVO findByPrimaryKey(String sq_brand_id);
	public List<BrandVO> getAll();
}

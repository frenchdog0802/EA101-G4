package com.shop_product.model;

import java.sql.Date;

public class Shop_productVO implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	
	public Shop_productVO() {
		sq_product_id = "";
		product_name = "";
		product_price = 0;
		product_quantity = 1;
	}
	
	private String sq_product_id;
	private String sq_brand_id;
	private String product_kind_name;
	private String product_name;
	private Integer product_price;
	private byte[] product_pic;
	private Integer product_quantity;
	private String product_detail;
	private Date add_date;
	private String product_material;
	private Integer product_status;
	private String product_color;
	private String product_model;
	
	public String getProduct_color() {
		return product_color;
	}
	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}
	public String getProduct_model() {
		return product_model;
	}
	public void setProduct_model(String product_model) {
		this.product_model = product_model;
	}
	public String getSq_product_id() {
		return sq_product_id;
	}
	public void setSq_product_id(String sq_product_id) {
		this.sq_product_id = sq_product_id;
	}
	public String getSq_brand_id() {
		return sq_brand_id;
	}
	public void setSq_brand_id(String sq_brand_id) {
		this.sq_brand_id = sq_brand_id;
	}
	public String getProduct_kind_name() {
		return product_kind_name;
	}
	public void setProduct_kind_name(String product_kind_name) {
		this.product_kind_name = product_kind_name;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public Integer getProduct_price() {
		return product_price;
	}
	public void setProduct_price(Integer product_price) {
		this.product_price = product_price;
	}
	public byte[] getProduct_pic() {
		return product_pic;
	}
	public void setProduct_pic(byte[] product_pic) {
		this.product_pic = product_pic;
	}
	public String getProduct_detail() {
		return product_detail;
	}
	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}
	public Date getAdd_date() {
		return add_date;
	}
	public void setAdd_date(Date add_date) {
		this.add_date = add_date;
	}
	public String getProduct_material() {
		return product_material;
	}
	public void setProduct_material(String product_material) {
		this.product_material = product_material;
	}
	public Integer getProduct_status() {
		return product_status;
	}
	public void setProduct_status(Integer product_status) {
		this.product_status = product_status;
	}
	public Integer getProduct_quantity() {
		return product_quantity;
	}
	public void setProduct_quantity(Integer product_quantity) {
		this.product_quantity = product_quantity;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((product_color == null) ? 0 : product_color.hashCode());
		result = prime * result + ((product_model == null) ? 0 : product_model.hashCode());
		result = prime * result + ((product_name == null) ? 0 : product_name.hashCode());
		result = prime * result + ((product_price == null) ? 0 : product_price.hashCode());
		result = prime * result + ((sq_product_id == null) ? 0 : sq_product_id.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Shop_productVO other = (Shop_productVO) obj;
		if (product_color == null) {
			if (other.product_color != null)
				return false;
		} else if (!product_color.equals(other.product_color))
			return false;
		if (product_model == null) {
			if (other.product_model != null)
				return false;
		} else if (!product_model.equals(other.product_model))
			return false;
		if (product_name == null) {
			if (other.product_name != null)
				return false;
		} else if (!product_name.equals(other.product_name))
			return false;
		if (product_price == null) {
			if (other.product_price != null)
				return false;
		} else if (!product_price.equals(other.product_price))
			return false;
		if (sq_product_id == null) {
			if (other.sq_product_id != null)
				return false;
		} else if (!sq_product_id.equals(other.sq_product_id))
			return false;
		return true;
	}
}

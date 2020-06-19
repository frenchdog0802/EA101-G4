package com.shop_message.model;

import java.util.*;

public interface Shop_messageDAO_interface {
	public void insert(Shop_messageVO shop_messageVO);
	public void update(Shop_messageVO shop_messageVO);
	public void delete(String sq_shop_message_id);
	public Shop_messageVO findByPrimaryKey(String sq_shop_message_id);
	public List<Shop_messageVO> getAll();
}


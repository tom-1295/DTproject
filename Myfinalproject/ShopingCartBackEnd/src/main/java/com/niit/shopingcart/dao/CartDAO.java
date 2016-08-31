package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.Cart;
import com.niit.shopingcart.model.shipping;

public interface CartDAO {


	public List<Cart> list();

	public Cart get(String id);
	
	public void saveOrUpdate(Cart cart);

	public void delete(String id);
	public void saveOrUpdate(shipping ship);


	public void delete(int id);
	
	public int getTotalAmount(String id);
	
}

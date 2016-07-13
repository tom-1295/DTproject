package com.niit.shopingcart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CartDAO;
import com.niit.shopingcart.model.Cart;

public class CartTest {

	public static void main(String[] args) {
		
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
	Cart c =(Cart)	  context.getBean("cart");
	//c.setId(10);
	c.setPrice(120);
	c.setQuantity(12);
	
	CartDAO cartDAO = (CartDAO)  context.getBean("cartDAO");
	cartDAO.saveOrUpdate(c);
	
	}
}
	



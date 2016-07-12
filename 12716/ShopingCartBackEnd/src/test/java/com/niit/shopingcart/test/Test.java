package com.niit.shopingcart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.niit.shopingcart.dao.UserDAO;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.User;


public class Test {
	
	/*AnnotationConfigApplicationContext context;
	
	public Test()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
	}*/
	
	/*public static void createUser(User user)
	{
		
		
		
	}*/
	
	

	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		
		
		User user =(User)  context.getBean("user");
		
		User user1 =(User)  context.getBean("user");

		UserDAO  userDAO =  (UserDAO) context.getBean("userDAO");
		
		user.setId("NIIT");
		user.setPassword("NIIT");
		user.setAdmin(true);

		user1.setId("add");
		user1.setPassword("add");
		user1.setAdmin(true);
		userDAO.saveOrUpdate(user1);
	
		
		
	}

	

}

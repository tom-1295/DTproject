package com.niit.shopingcart.test;

import java.util.List;
import java.util.Set;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;

public class CategoryTest {
	
	
	public static void main(String[] args) {
		
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
	Category c =(Category)	  context.getBean("category");
	
	CategoryDAO categoryDAO = (CategoryDAO)  context.getBean("categoryDAO");
	
	//Product p=(Product)   context.getBean("product");
	/*c.setId("ma");
	c.setName("Tablet");
	c.setDescription("Tablet product");*/
	
	
	
	/*categoryDAO.saveOrUpdate(c);*/

	
	
	
	List<Category>  list =    categoryDAO.list();
	
	for(Category cat : list)
	{
		System.out.println(cat.getId()  + ":" +  cat.getName()  + ":"+  cat.getDescription());
	}
		
		
	}

}

package com.niit.shopingcart.test;




import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.core.env.SystemEnvironmentPropertySource;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.UserDAO;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.User; 


public class TestCategory {
static AnnotationConfigApplicationContext context;
public TestCategory()
{
context = new AnnotationConfigApplicationContext();
context.scan("com.niit.shopingcart");
context.refresh();
}
public static void createCategory(Category category)
{
CategoryDAO  categoryDAO =  (CategoryDAO) context.getBean("categoryDAO");
categoryDAO.saveOrUpdate(category);
}
public static void main(String[] args)
{
	TestCategory t = new TestCategory();
	Category category = (Category) context.getBean("category");
	category.setId("nt-122");
	category.setDescription("This is car");
	category.setName("Nandhu");
	//categoryDAO.saveOrUpdate(category);
	
	t.createCategory(category);
}
private static void display(List <Category> list){
	for(Category c : list){
		System.out.print(c.getId() + ":" + c.getName() +":" + c.getDescription() +":");
	}
}
}	



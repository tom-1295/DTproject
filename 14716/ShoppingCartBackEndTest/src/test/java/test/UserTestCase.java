package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.UserDAO;

public class UserTestCase {

	AnnotationConfigApplicationContext context;
	UserDAO userDAO;
	
@Before
	public void init()
	{System.out.println("haii");
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		System.out.println("hello");
		userDAO =(UserDAO)context.getBean("userDAO");
		
		System.out.println("in");
		System.out.println(userDAO.hashCode());
		
	}

	@Test
	public void isValidUserTestCase()
	{
		assertEquals("Valid user TestCase",true,
		userDAO.isValidUser("admin","admin",true));
	}
	@Test
	public void listAllUserTestCase()
	{
		assertEquals("List Users" ,  5   ,userDAO.list().size());
	}

}

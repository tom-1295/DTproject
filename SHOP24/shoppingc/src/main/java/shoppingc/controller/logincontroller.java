package shoppingc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 @Controller
public class logincontroller {
	@RequestMapping("/LPage")
	public String get(){
		return "Login";
		
	}
	

}

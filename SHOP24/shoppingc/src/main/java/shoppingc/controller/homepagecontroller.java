package shoppingc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class homepagecontroller {
	 
	
	 	@RequestMapping("/")
	 	public String get(){
	 		return "LPage";
	 	}
}
	 		



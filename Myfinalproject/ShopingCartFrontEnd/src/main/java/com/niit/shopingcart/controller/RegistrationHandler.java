package com.niit.shopingcart.controller;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.niit.shopingcart.model.UserDetails1;




@Component
public class RegistrationHandler {

	public UserDetails1 initFlow(){
		return new UserDetails1();
	}

	public String validateDetails(UserDetails1 UserDetails1,MessageContext messageContext){
		String status = "success";
		if(UserDetails1.getId().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"id").defaultText("UserId cannot be Empty").build());
			status = "failure";
		}
		if(UserDetails1.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"name").defaultText("Name cannot be Empty").build());
			status = "failure";
		}
		if(UserDetails1.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
	
		if(UserDetails1.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(UserDetails1.getMobile().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mobile").defaultText("Mobile cannot be Empty").build());
			status = "failure";
		}
		if(UserDetails1.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"address").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		
		return status;
	}
}
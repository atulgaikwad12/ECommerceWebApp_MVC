package com.atul.FrontEnd.handler;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.atul.BackEnd.dao.UserDAO;
import com.atul.BackEnd.dto.Address;
import com.atul.BackEnd.dto.Cart;
import com.atul.BackEnd.dto.User;
import com.atul.FrontEnd.model.RegisterModel;

@Component
public class RegisterHandler {

	@Autowired
	private UserDAO userDAO;
	public RegisterModel init(){
		return new RegisterModel();
	}
	
	public void addUser(RegisterModel registerModel,User user){
		
		registerModel.setUser(user);
	}
	
	
	public void addBilling(RegisterModel registerModel,Address billing){
			
		registerModel.setBilling(billing);;
	}
	
	public String validateUser(User user,MessageContext error){
		String transitionValue = "success";
		if(!(user.getPassword().equals(user.getConfirmPassword()))){
			transitionValue = "failure";
			error.addMessage(new MessageBuilder().error().source("confirmPassword").defaultText("Password does not match").build());
		}
		
		if(userDAO.getByEmail(user.getEmail())!= null)
		{
			transitionValue = "failure";
			error.addMessage(new MessageBuilder().error().source("email").defaultText("User with this mail id exist already").build());
		}
		return transitionValue;
	}
	
	public String saveAll(RegisterModel model){
	String transitionValue = "success";	
	User user = model.getUser();
	if(user.getRole().equals("USER")){
		Cart cart = new Cart();
		cart.setUser(user);
		user.setCart(cart);
	}
	//Saving user
	userDAO.addUser(user);
	//Get address
	Address billing= model.getBilling();
	billing.setUser(user);
	billing.setBilling(true);
	//save address
	userDAO.addAddres(billing);
	
	return transitionValue;
	}
}

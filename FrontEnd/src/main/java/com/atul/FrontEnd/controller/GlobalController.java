package com.atul.FrontEnd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.atul.BackEnd.dao.UserDAO;
import com.atul.BackEnd.dto.User;
import com.atul.FrontEnd.model.UserModel;

@ControllerAdvice
public class GlobalController {

	
	@Autowired
	private HttpSession session;

	@Autowired
	private UserDAO userDAO;
	
	private UserModel userModel = null;
	
	@ModelAttribute("userModel")
	public UserModel getUserModel(){
		if(session.getAttribute("userModel")== null)
		{
			//add user model
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			
			User user = userDAO.getByEmail(authentication.getName());
			
			if(user!=null)
			{
				//create new user model to pass user details
				userModel = new UserModel();
				userModel.setId(user.getId());
				userModel.setEmail(user.getEmail());
				userModel.setFullname(user.getFirstname()+" "+user.getLastname());
				userModel.setRole(user.getRole());
				
				if(userModel.getRole().equals("USER")){
					//set cart only if user is buyer
					userModel.setCart(user.getCart());
				}
				//set user model in session attribute
				session.setAttribute("userModel",userModel);
				return userModel;
				
			}
		}
		return (UserModel) session.getAttribute("userModel");
		
		
	}
	
}

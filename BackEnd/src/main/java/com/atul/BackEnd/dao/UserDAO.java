package com.atul.BackEnd.dao;

import java.util.List;

import com.atul.BackEnd.dto.Address;
import com.atul.BackEnd.dto.Cart;
import com.atul.BackEnd.dto.User;

public interface UserDAO {
	
	List<User> list();
	User getByEmail(String email);
	boolean addUser(User user);
	
	boolean addAddres(Address address);
	Address getBillingAddress(User user);
	List<Address> listShippingAdresses(User user);
	
	boolean updateCart(Cart cart);
	
}

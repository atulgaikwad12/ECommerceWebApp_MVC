package com.atul.BackEnd.test;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import static org.junit.Assert.assertEquals;
import com.atul.BackEnd.dao.UserDAO;
import com.atul.BackEnd.dto.Address;
import com.atul.BackEnd.dto.Cart;
import com.atul.BackEnd.dto.User;



public class UserTestCase {
	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private  User user = null;
	private  Cart cart = null;
	private  Address address = null;

	@BeforeClass
	public static void init(){
		
		context =new AnnotationConfigApplicationContext();
		context.scan("com.atul.BackEnd");
		context.refresh();
		userDAO =(UserDAO)context.getBean("userDAO");	
	}
	
	//Before one to one mapping
	/*
	@Test
	public void testAddUser(){
		//Add User
		user =new User();
		user.setFirstname("Rohit");
		user.setLastname("Deshmukh");
		user.setEmail("rk122@gmail.com");
		user.setPassword("rohit1234");
		user.setContactnumber("9963583733");
		user.setRole("USER");
			assertEquals("Failed to add user",true,userDAO.addUser(user));
	
			
			address = new Address();
			address.setAddressLineOne("13/27,B.D.D Chwal");
			address.setAddressLineTwo("Delisle Road,Lower Parel");
			address.setCity("Mumbai");
			address.setBilling(true);
			address.setState("Maharashtra");
			address.setCountry("India");
			address.setPostalCode("400013");
			//link user with his address
			address.setUserId(user.getId());
			assertEquals("Failed to add Billing address",true,userDAO.addAddres(address));
			
			if(user.getRole().equals("USER")){
				//creating cart for user
			
				cart =new Cart();
				cart.setUserId(user.getId());	
				assertEquals("Failed to add cart",true,userDAO.addCart(cart));
			
				//Adding shipping address
				
				address = new Address();
				address.setAddressLineOne("13/27,B.D.D Chwal");
				address.setAddressLineTwo("Delisle Road,Lower Parel");
				address.setCity("Mumbai");
				address.setShipping(true);;
				address.setState("Maharashtra");
				address.setCountry("India");
				address.setPostalCode("400013");
				//link user with his address
				address.setUserId(user.getId());
				assertEquals("Failed to add Shipping address",true,userDAO.addAddres(address));
				
			}
		
	}
		*/
	
	//---------------------------------------------------------------------------------
	//Bi directional mapping 
	/*
	@Test
	public void testAddUser(){
		//Add User
		user =new User();
		user.setFirstname("Rohit");
		user.setLastname("Deshmukh");
		user.setEmail("rk122@gmail.com");
		user.setPassword("rohit1234");
		user.setContactnumber("9963583733");
		user.setRole("USER");
			assertEquals("Failed to add user",true,userDAO.addUser(user));
	
			
			address = new Address();
			address.setAddressLineOne("13/27,B.D.D Chwal");
			address.setAddressLineTwo("Delisle Road,Lower Parel");
			address.setCity("Mumbai");
			address.setBilling(true);
			address.setState("Maharashtra");
			address.setCountry("India");
			address.setPostalCode("400013");
			//link user with his address
			address.setUserId(user.getId());
			assertEquals("Failed to add Billing address",true,userDAO.addAddres(address));
			
			if(user.getRole().equals("USER")){
				//creating cart for user
			
				cart =new Cart();
				cart.setUser(user);	
				assertEquals("Failed to add cart",true,userDAO.addCart(cart));
			
				//Adding shipping address
				
				address = new Address();
				address.setAddressLineOne("13/27,B.D.D Chwal");
				address.setAddressLineTwo("Delisle Road,Lower Parel");
				address.setCity("Mumbai");
				address.setShipping(true);;
				address.setState("Maharashtra");
				address.setCountry("India");
				address.setPostalCode("400013");
				//link user with his address
				address.setUserId(user.getId());
				assertEquals("Failed to add Shipping address",true,userDAO.addAddres(address));
				
			}
		
	}*/
	//---------------------------------------------------------------------
	//Avoiding add cart 
	/*
	@Test
	public void testAddUser(){
		
		user =new User();
		user.setFirstname("Rohit");
		user.setLastname("Deshmukh");
		user.setEmail("rk122@gmail.com");
		user.setPassword("rohit1234");
		user.setContactnumber("9963583733");
		user.setRole("USER");
			
			
			if(user.getRole().equals("USER")){
				//creating cart for user
				cart =new Cart();
				cart.setUser(user);	
				//Attach cart to user
				user.setCart(cart);
				
			}
			//Add User
			assertEquals("Failed to add user",true,userDAO.addUser(user));
			
		
	}
	*/
	//------------------------------------------------------
	/*@Test
	public void testUpdateCart(){
		
	user= userDAO.getByEmail("rk122@gmail.com");
	cart = user.getCart();
	cart.setGrandTotal(20000);
	cart.setCartLines(2);
	assertEquals("Failed to update cart",true,userDAO.updateCart(cart));
	}*/
	//--------------------------------------------------------------------
	/*
	@Test
	public void testAddAddress(){
		//Add User
				user =new User();
				user.setFirstname("Rohit");
				user.setLastname("Deshmukh");
				user.setEmail("rk122@gmail.com");
				user.setPassword("rohit1234");
				user.setContactnumber("9963583733");
				user.setRole("USER");
					assertEquals("Failed to add user",true,userDAO.addUser(user));
			
					
					address = new Address();
					address.setAddressLineOne("13/27,B.D.D Chwal");
					address.setAddressLineTwo("Delisle Road,Lower Parel");
					address.setCity("Mumbai");
					address.setShipping(true);
					address.setState("Maharashtra");
					address.setCountry("India");
					address.setPostalCode("400013");
					//link user with his address
					address.setUser(user);
					assertEquals("Failed to add Shipping address",true,userDAO.addAddres(address));
		
	}*/
	//--------------------------------------------------------------------
	//Multiple shipping address of same user
	/*
		@Test
		public void testAddAddress(){
			address = new Address();
			address.setAddressLineOne("Vasant vihar");
			address.setAddressLineTwo("Shanivar vada");
			address.setCity("Pune");
			address.setShipping(true);
			address.setState("Maharashtra");
			address.setCountry("India");
			address.setPostalCode("500011");
			//link user with his address
			user=userDAO.getByEmail("rk122@gmail.com");
			address.setUser(user);
			assertEquals("Failed to add another Shipping address",true,userDAO.addAddres(address));
			
		}*/
	//--------------------------------------------------------------------
		//Get Multiple shipping addresses of same user
	/*@Test
	public void testGetAddress(){
		user=userDAO.getByEmail("rk122@gmail.com");
		assertEquals("Failed to fetch multiple Shipping addresses",2,userDAO.listShippingAdresses(user).size());
		
		assertEquals("Failed to fetch Billing addresses","Mumbai",userDAO.getBillingAddress(user).getCity());
		
	}
		*/
}

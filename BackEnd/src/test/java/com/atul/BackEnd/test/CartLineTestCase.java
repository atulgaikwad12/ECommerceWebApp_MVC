package com.atul.BackEnd.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.atul.BackEnd.dao.CartlineDAO;
import com.atul.BackEnd.dao.ProductDAO;
import com.atul.BackEnd.dao.UserDAO;
import com.atul.BackEnd.dto.CartLine;
import com.atul.BackEnd.dto.Product;
import com.atul.BackEnd.dto.User;

public class CartLineTestCase {
	private static AnnotationConfigApplicationContext context;
	private static CartlineDAO cartlineDAO;
	private static ProductDAO productDAO;
	private static UserDAO userDAO;
	private CartLine cartline;
	private User user = null;
	private Product product = null;

	@BeforeClass
	public static void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.atul.BackEnd");
		context.refresh();
		cartlineDAO = (CartlineDAO) context.getBean("cartlineDAO");
		productDAO = (ProductDAO) context.getBean("productDAO");
		userDAO = (UserDAO) context.getBean("userDAO");
	}

	/*
	 * @Test public void testAddCartLine(){
	 * 
	 * String email="atul12@gmail.com"; CartLine cartline = new CartLine(); User
	 * user = (User) userDAO.getByEmail(email); product = (Product)
	 * productDAO.get(1); cartline.setProdId(product.getId());
	 * cartline.setCartId(user.getCart().getId());
	 * cartline.setBuyingPrice(product.getUnitprice());
	 * cartline.setQuantity(product.getQuantity());
	 * cartline.setTotal(cartline.getQuantity()*cartline.getBuyingPrice());
	 * 
	 * assertEquals("Something went wrong",true,cartlineDAO.add(cartline)); }
	 */

	/*
	 * @Test public void testListCartlines() { String email =
	 * "atul12@gmail.com"; user = (User) userDAO.getByEmail(email);
	 * assertEquals("Something went wrong while listing cartlines",1,
	 * cartlineDAO.list(user.getCart().getId()).size());
	 * 
	 * }
	 */

	/*@Test
	public void testUpdateCartlines() {
		String email = "atul12@gmail.com";
		CartLine cartline = new CartLine();
		User user = (User) userDAO.getByEmail(email);
		product = (Product) productDAO.get(35);
		cartline = (CartLine) cartlineDAO.ifExists(user.getCart().getId(),product.getId());
		//cartline.setProdId(product.getId());
		//cartline.setCartId(user.getCart().getId());
		cartline.setBuyingPrice(product.getUnitprice());
		cartline.setQuantity(product.getQuantity()+ product.getQuantity());
		cartline.setTotal(cartline.getQuantity() * cartline.getBuyingPrice());
		cartline.setAvailable(product.isActive());
		assertEquals("Something went wrong while updating cartline", true, cartlineDAO.update(cartline));

	}*/
	/*@Test
	public void testDeleteCartlines() {
		String email = "atul12@gmail.com";
		CartLine cartline = new CartLine();
		User user = (User) userDAO.getByEmail(email);
		product = (Product) productDAO.get(35);
		cartline = (CartLine) cartlineDAO.ifExists(user.getCart().getId(),product.getId());	
	assertEquals("Something went wrong while deleting cart line",true,cartlineDAO.delete(cartline));}
*/
}

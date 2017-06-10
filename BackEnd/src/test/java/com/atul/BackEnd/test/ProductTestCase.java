package com.atul.BackEnd.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.atul.BackEnd.dao.ProductDAO;
import com.atul.BackEnd.dto.Product;



public class ProductTestCase {
	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;
	private  Product product;

	@BeforeClass
	public static void init(){
		
		context =new AnnotationConfigApplicationContext();
		context.scan("com.atul.BackEnd");
		context.refresh();
		productDAO =(ProductDAO)context.getBean("productDAO");	
	}
	/*@Test
	public void testAddProduct(){
		
		Product product = new Product();
		product.setName("Pizza");
		product.setBrand("Veg");
		product.setCatid(3);
		product.setDescription("Delecious Italic Pan pizza with triple layerd chiese");
		product.setPimg_url("p1.jpg");
		product.setPurchases(0);
		product.setSpid(2);
		product.setUnitprice(85.00);
		product.setViews(0);
		product.setActive(true);
		product.setQuantity(1);
		
		assertEquals("Something went wrong",true,productDAO.add(product));
	}*/
	
	/*
	@Test
	public void testCrudePorduct(){
		//Add product
		Product product = new Product();
		product.setName("Happy Meal");
		product.setBrand("Veg");
		product.setCatid(4);
		product.setDescription("Affordable meal combo of burger and coke float");
		product.setPimg_url("s6.jpg");
		product.setPurchases(0);
		product.setSpid(1);
		product.setUnitprice(125.00);
		product.setViews(0);
		product.setActive(true);
		product.setQuantity(1);
		
		assertEquals("Something went wrong while adding product",true,productDAO.add(product));
		//Reading and updating 
		product =productDAO.get(1);
		product.setUnitprice(120.00);
		assertEquals("Something went wrong while updating  product",true,productDAO.update(product));
		//deleting
		product =productDAO.get(8);
		assertEquals("Something went wrong while deleting product",true,productDAO.delete(product));
		//Listing
	
		assertEquals("Something went wrong while listing product",9,productDAO.list().size());
	}
	*/
	/*@Test
	public void testListPorduct(){
		//Listing Active Products
		
			assertEquals("Something went wrong while listing  active product",8,productDAO.listActiveProducts().size());
	
			//Listing Active Products By category
			
			assertEquals("Something went wrong while listing product by category",2,productDAO.listActiveProductsByCategory(2).size());
	
	}
	*/
	/*
	@Test
	public void testLatestPorduct(){
		//Listing Latest Products
		
			assertEquals("Something went wrong while listing  active Latest product",3,productDAO.getLatestActiveProducts(3).size());
	
	}
	*/

}

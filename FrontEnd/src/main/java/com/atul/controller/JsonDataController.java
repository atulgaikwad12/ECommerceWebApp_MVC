package com.atul.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atul.BackEnd.dao.ProductDAO;
import com.atul.BackEnd.dto.Product;



@Controller

public class JsonDataController {
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/json/data/all/products")
	@ResponseBody
	public List<Product> getAllProducts(){
		
		return productDAO.listActiveProducts();
	}
	
	@RequestMapping("/json/data/admin/all/products")
	@ResponseBody
	public List<Product> getAllProductsForAdmin(){
		
		return productDAO.list();
	}
	
	@RequestMapping("/json/data/category/{id}/products")
	@ResponseBody
	public List<Product> getProductsByCategory(@PathVariable int id){
		
		return productDAO.listActiveProductsByCategory(id);
	}

	
	

}

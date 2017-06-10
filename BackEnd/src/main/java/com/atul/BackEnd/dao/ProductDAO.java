package com.atul.BackEnd.dao;

import java.util.List;


import com.atul.BackEnd.dto.Product;

public interface ProductDAO {

	List<Product> list();
	Product get(int productid);
	boolean add(Product product);
	boolean update(Product product);
	boolean delete(Product product);
	
	//Business models
	List<Product> listActiveProducts();
	List<Product> listActiveProductsByCategory(int categoryid);
	List<Product> getLatestActiveProducts(int count);
}

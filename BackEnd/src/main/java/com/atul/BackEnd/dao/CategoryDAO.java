package com.atul.BackEnd.dao;

import com.atul.BackEnd.dto.Category;

import java.util.List;

public interface CategoryDAO {
	List<Category> list();
	Category get(int id);
	

}

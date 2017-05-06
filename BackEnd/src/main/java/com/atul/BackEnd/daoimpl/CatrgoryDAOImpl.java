package com.atul.BackEnd.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.atul.BackEnd.dao.CategoryDAO;
import com.atul.BackEnd.dto.Category;

@Repository("categoryDAO")
public class CatrgoryDAOImpl implements CategoryDAO {
private static List<Category> categories= new ArrayList<>();
static{
Category category =new Category();
category.setCatid(2001);
category.setCatname("Starters");
category.setCatdesc("Delisious starters to start your diet");
category.setImageURL("s1.jpg");

categories.add(category);
//adding second category
category =new Category();
category.setCatid(2002);
category.setCatname("Main Course");
category.setCatdesc("Healthy Main course with many varities");
category.setImageURL("s2.jpg");

categories.add(category);
//adding third category
category =new Category();
category.setCatid(2003);
category.setCatname("Deserts");
category.setCatdesc("Light and Yummay Desrts perfect to complement your meal");
category.setImageURL("s3.jpg");

categories.add(category);
//adding fourth category
category =new Category();
category.setCatid(2004);
category.setCatname("Combo Meal");
category.setCatdesc("Now share your joy with your firends,family and special ones");
category.setImageURL("s4.jpg");

categories.add(category);
	
}
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}
	@Override
	public Category get(int id) {
		// passing id depending on category
     for(Category category:categories)
     {
	    if(category.getCatid() == id)
		return category;}
		return null;	
	}

	
}

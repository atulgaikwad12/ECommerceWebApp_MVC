package com.atul.BackEnd.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.atul.BackEnd.dao.CategoryDAO;
import com.atul.BackEnd.dto.Category;

public class CategoryTestCase {
	
private static AnnotationConfigApplicationContext context;
private static CategoryDAO categoryDAO;
private  Category category;

@BeforeClass
public static void init(){
	
	context =new AnnotationConfigApplicationContext();
	context.scan("com.atul.BackEnd");
	context.refresh();
	categoryDAO =(CategoryDAO)context.getBean("categoryDAO");	
}

/*@Test
public void testAddCategory(){
	
	Category category =new Category();
	category.setCatname("Starters");
	category.setCatdesc("Delicious starters to start your diet");
	category.setImageURL("s1.jpg");
	
	assertEquals("Something went wrong while adding category",true,categoryDAO.add(category));

	
}*/

/*
@Test
public void testGetCategory(){
	
	 category= categoryDAO.get(2);
	 assertEquals("Something went wrong while Fetched single Category","Desert",category.getCatname());

	
}*/
/*@Test
public void testUpdateCategory(){
	
	 category= categoryDAO.get(2);
	 category.setCatname("Deserts");
	 assertEquals("Something went wrong while Updating Category",true,categoryDAO.update(category));

	
}*/

/*@Test
public void testDeleteCategory(){
	 category= categoryDAO.get(2);
	 assertEquals("Something went wrong while deleting Category",true,categoryDAO.delete(category));

	
}*/

/*@Test
public void testListAllCategory(){
	 assertEquals("Something went wrong while Fetching all Categories",2,categoryDAO.list().size());
	
}*/



}

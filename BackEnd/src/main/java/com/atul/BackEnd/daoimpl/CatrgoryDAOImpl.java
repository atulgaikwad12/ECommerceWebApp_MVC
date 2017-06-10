package com.atul.BackEnd.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.atul.BackEnd.dao.CategoryDAO;
import com.atul.BackEnd.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CatrgoryDAOImpl implements CategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Category> list() {
		//returning list
		String selectActiveCategory="FROM Category WHERE active = :active";
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategory);
		query.setParameter("active", true);
		return query.getResultList();
	}
	
	/*
	 * for getting single category
	 */
	@Override
	public Category get(int id) {
		// passing id depending on category
//     for(Category category:categories)
//     {
//	    if(category.getCatid() == id)
//		return category;}
		return sessionFactory.getCurrentSession().get(Category.class,Integer.valueOf(id));	
	}
	@Override
	public boolean add(Category category) {
		try{
			//Add Category to database
			sessionFactory.getCurrentSession().persist(category);;
			return true;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}
	@Override
	public boolean update(Category category) {
		try{
			//update single  Category 
			sessionFactory.getCurrentSession().update(category);;
			return true;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}
	@Override
	public boolean delete(Category category) {
		category.setActive(false);
		try{
			//Deactivating Category 
			sessionFactory.getCurrentSession().update(category);;
			return true;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}

	
}

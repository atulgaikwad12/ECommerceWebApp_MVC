package com.atul.BackEnd.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.atul.BackEnd.dao.ProductDAO;
import com.atul.BackEnd.dto.Category;
import com.atul.BackEnd.dto.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Product> list() {
		// TODO Auto-generated method stub
		
		String selectAllProduct="FROM Product";
		Query query = sessionFactory.getCurrentSession().createQuery(selectAllProduct,Product.class);
		return query.getResultList();
	}

	@Override
	public Product get(int productid) {
		try{
		return sessionFactory.getCurrentSession().get(Product.class,Integer.valueOf(productid));	
		}
		catch(Exception ex){
			ex.printStackTrace();
			
		}
		return null;
		
	}

	@Override
	public boolean add(Product product) {
		try{
			//Add Product to database
			sessionFactory.getCurrentSession().persist(product);;
			return true;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(Product product) {
		try{
			//update single  Product
			sessionFactory.getCurrentSession().update(product);;
			return true;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean delete(Product product) {
		product.setActive(false);
		try{
			//Deactivating Product 
			sessionFactory.getCurrentSession().update(product);;
			return true;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Product> listActiveProducts() {
		String selectActiveProduct="FROM Product WHERE active = :active";
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveProduct);
		query.setParameter("active", true);
		return query.getResultList();
	}

	@Override
	public List<Product> listActiveProductsByCategory(int categoryid) {
		String selectActiveProductByCategory="FROM Product WHERE active = :active AND catid = :catid";
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveProductByCategory);
		query.setParameter("active", true);
		query.setParameter("catid",categoryid);
		return query.getResultList();	}

	@Override
	public List<Product> getLatestActiveProducts(int count) {
		return sessionFactory.getCurrentSession()
				.createQuery("FROM Product WHERE active = :active ORDER BY id",Product.class)
				.setParameter("active",true)
				.setFirstResult(0)
				.setMaxResults(count)
				.getResultList();
	}

}

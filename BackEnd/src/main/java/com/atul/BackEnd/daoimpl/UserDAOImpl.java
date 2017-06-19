package com.atul.BackEnd.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.atul.BackEnd.dao.UserDAO;
import com.atul.BackEnd.dto.Address;
import com.atul.BackEnd.dto.Cart;
import com.atul.BackEnd.dto.Product;
import com.atul.BackEnd.dto.User;

@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<User> list() {
		String selectAllUsers = "FROM User";
		Query query = sessionFactory.getCurrentSession().createQuery(selectAllUsers, User.class);
		return query.getResultList();

	}

	@Override
	public User getByEmail(String email) {
		String selectQuery = "FROM User WHERE email = :email";

		try {
			return sessionFactory.getCurrentSession().createQuery(selectQuery, User.class).setParameter("email", email)
					.getSingleResult();
		} catch (Exception ex) {
			// ex.printStackTrace();
			return null;
		}

	}

	@Override
	public boolean addUser(User user) {
		try {
			// Add User to database
			sessionFactory.getCurrentSession().persist(user);
			;
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addAddres(Address address) {
		try {
			// Add Address of User to database
			sessionFactory.getCurrentSession().persist(address);
			;
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateCart(Cart cart) {
		try {
			// Create cart for user in database
			sessionFactory.getCurrentSession().update(cart);
			;
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public Address getBillingAddress(User user) {
		String selectQuery = "FROM Address WHERE user = :user AND billing = :billing";

		try {
			return sessionFactory.getCurrentSession().createQuery(selectQuery, Address.class).setParameter("user", user)
					.setParameter("billing", true).getSingleResult();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Address> listShippingAdresses(User user) {
		String selectQuery = "FROM Address WHERE user = :user AND shipping = :shipping";

		try {
			return sessionFactory.getCurrentSession().createQuery(selectQuery, Address.class).setParameter("user", user)
					.setParameter("shipping", true).getResultList();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

}

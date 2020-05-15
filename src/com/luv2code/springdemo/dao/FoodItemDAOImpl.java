package com.luv2code.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.entity.FoodItem;

@Repository
public class FoodItemDAOImpl implements FoodItemDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<FoodItem> getFoodItems() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<FoodItem> theQuery = currentSession.createQuery("from FoodItem", FoodItem.class);
		
		List<FoodItem> foodItems = theQuery.getResultList();
		
		return foodItems;
		
	}

}

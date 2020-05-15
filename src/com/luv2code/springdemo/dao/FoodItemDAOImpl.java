package com.luv2code.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	@Override
	public void saveFoodItem(FoodItem theFoodItem) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.save(theFoodItem);
	}

	@Override
	public FoodItem getFoodItem(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		FoodItem theFoodItem = currentSession.get(FoodItem.class, theId);
			
		return theFoodItem;
	}

}

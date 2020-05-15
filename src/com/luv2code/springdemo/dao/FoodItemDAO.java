package com.luv2code.springdemo.dao;

import java.util.List;

import com.luv2code.springdemo.entity.FoodItem;

public interface FoodItemDAO {

	
	public List<FoodItem> getFoodItems();

	public void saveFoodItem(FoodItem theFoodItem);

	public FoodItem getFoodItem(int theId);
	
}

package com.luv2code.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.dao.FoodItemDAO;
import com.luv2code.springdemo.entity.FoodItem;

@Service
public class FoodItemServiceImpl implements FoodItemService {

	@Autowired
	private FoodItemDAO foodItemDAO;
	
	
	@Override
	@Transactional 
	public List<FoodItem> getFoodItems() {
		return foodItemDAO.getFoodItems();
	}

}

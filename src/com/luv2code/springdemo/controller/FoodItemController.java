package com.luv2code.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.luv2code.springdemo.dao.FoodItemDAO;
import com.luv2code.springdemo.entity.FoodItem;

@Controller
@RequestMapping("/food-item")
public class FoodItemController {
	
	@Autowired
	private FoodItemDAO foodItemDAO;

	@RequestMapping("/list")
	public String listFoodItems(Model theModel) {
		
		List<FoodItem> theFoodItems = foodItemDAO.getFoodItems();
		
		theModel.addAttribute("foodItems", theFoodItems);
		
		
		return "list-food-items";
	}
	
}

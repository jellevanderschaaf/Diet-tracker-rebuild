package com.luv2code.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.luv2code.springdemo.entity.FoodItem;
import com.luv2code.springdemo.service.FoodItemService;

@Controller
@RequestMapping("/food-item")
public class FoodItemController {
	
	@Autowired
	private FoodItemService foodItemService;
	
	@RequestMapping("/list")
	public String listFoodItems(Model theModel) {
		
		List<FoodItem> theFoodItems = foodItemService.getFoodItems();
		
		theModel.addAttribute("foodItems", theFoodItems);
		
		
		return "list-food-items";
	}
	
	
	@RequestMapping("/showFormNewFoodItem")
	public String showFormNewFoodItem(Model theModel) {
		
		FoodItem theFoodItem = new FoodItem();
		
		theModel.addAttribute("foodItem", theFoodItem);
		
		return "food-item-form";
	}
	
}

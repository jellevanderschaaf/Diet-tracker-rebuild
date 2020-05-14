package com.luv2code.springdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/food-item")
public class FoodItemController {

	@RequestMapping("/list")
	public String listFoodItems(Model theModel) {
		
		return "list-food-items";
	}
	
	
}

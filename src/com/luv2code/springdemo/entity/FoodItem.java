package com.luv2code.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="food_items")
public class FoodItem {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="fat")
	private int fat;
	
	@Column(name="carbs")
	private int carbs;
	
	@Column(name="protein")
	private int protein;
	
	@Column(name="kcals")
	private int kcals;
	
	@Column(name="price")
	private int price;
	
	@Column(name="list")
	private String list;
	
	public FoodItem() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getFat() {
		return fat;
	}

	public void setFat(int fat) {
		this.fat = fat;
	}

	public int getCarbs() {
		return carbs;
	}

	public void setCarbs(int carbs) {
		this.carbs = carbs;
	}

	public int getProtein() {
		return protein;
	}

	public void setProtein(int protein) {
		this.protein = protein;
	}

	public int getKcals() {
		return kcals;
	}

	public void setKcals(int kcals) {
		this.kcals = kcals;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getList() {
		return list;
	}

	public void setList(String list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "FoodItem [id=" + id + ", name=" + name + ", fat=" + fat + ", carbs=" + carbs + ", protein=" + protein
				+ ", kcals=" + kcals + ", price=" + price + ", list=" + list + "]";
	}
	
	
}

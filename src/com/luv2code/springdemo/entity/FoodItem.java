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
	private double fat;
	
	@Column(name="carbs")
	private double carbs;
	
	@Column(name="protein")
	private double protein;
	
	@Column(name="kcals")
	private double kcals;
	
	@Column(name="price")
	private double price;
	
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

	public double getFat() {
		return fat;
	}

	public void setFat(double fat) {
		this.fat = fat;
	}

	public double getCarbs() {
		return carbs;
	}

	public void setCarbs(double carbs) {
		this.carbs = carbs;
	}

	public double getProtein() {
		return protein;
	}

	public void setProtein(double protein) {
		this.protein = protein;
	}

	public double getKcals() {
		return kcals;
	}

	public void setKcals(double kcals) {
		this.kcals = kcals;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
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

package main.java.com.springinaction.pizza.service;

import java.util.List;

import main.java.com.springinaction.pizza.domain.Pizza;

public interface PricingEngine {
	public float calculateOrderTotal(List<Pizza> pizzas);
}

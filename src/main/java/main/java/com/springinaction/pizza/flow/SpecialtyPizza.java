package main.java.com.springinaction.pizza.flow;

import java.util.ArrayList;
import java.util.List;

import main.java.com.springinaction.pizza.domain.Pizza;
import main.java.com.springinaction.pizza.domain.Topping;

public class SpecialtyPizza {

	public List<Pizza> getPizza(Pizza pizza) {
		List<Pizza> newPizza = new ArrayList<Pizza>();
		if (pizza.getSpecialPizza().size() != 0) {
			for (String type : pizza.getSpecialPizza()) {
				if ("MEAT".equals(type)) {

					List<Topping> meats = new ArrayList<Topping>();

					meats.add(Topping.CANADIAN_BACON);
					meats.add(Topping.HAMBURGER);
					meats.add(Topping.PEPPERONI);
					meats.add(Topping.SAUSAGE);
					Pizza tempt = new Pizza();
					tempt.setSize(pizza.getSize());
					tempt.setToppings(meats);
					tempt.setIsCombo("MEAT");
					newPizza.add(tempt);
				} else if ("VEGGIE".equals(type)) {

					List<Topping> meats = new ArrayList<Topping>();

					meats.add(Topping.GREEN_PEPPER);
					meats.add(Topping.MUSHROOM);
					meats.add(Topping.PINEAPPLE);
					meats.add(Topping.TOMATO);

					Pizza tempt = new Pizza();
					tempt.setSize(pizza.getSize());
					tempt.setToppings(meats);
					tempt.setIsCombo("VEGGIE");
					newPizza.add(tempt);
				} else if ("THEWORKS".equals(type)) {

					List<Topping> meats = new ArrayList<Topping>();
					System.out.println("THE WORKS!");

					meats.add(Topping.CANADIAN_BACON);
					meats.add(Topping.HAMBURGER);
					meats.add(Topping.PEPPERONI);
					meats.add(Topping.SAUSAGE);
					meats.add(Topping.GREEN_PEPPER);
					meats.add(Topping.MUSHROOM);
					meats.add(Topping.PINEAPPLE);
					meats.add(Topping.TOMATO);
					meats.add(Topping.EXTRA_CHEESE);
					meats.add(Topping.ONION);
					meats.add(Topping.JALAPENO);

					Pizza tempt = new Pizza();
					tempt.setSize(pizza.getSize());
					tempt.setToppings(meats);
					tempt.setIsCombo("THEWORKS");
					newPizza.add(tempt);
				}
			}
			return newPizza;
		} else {
			return newPizza;
		}
	}
}

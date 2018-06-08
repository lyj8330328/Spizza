package main.java.com.springinaction.pizza.domain;

import java.io.Serializable;
import java.util.List;

@SuppressWarnings("serial")
public class Pizza implements Serializable {
	private PizzaSize size;
	private List<Topping> toppings;
	private List<String> specialPizza;
	private String isCombo;
	private float price;

	public Pizza() {
		size = PizzaSize.LARGE;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getIsCombo() {
		return isCombo;
	}

	public void setIsCombo(String isCombo) {
		this.isCombo = isCombo;
	}

	public List<String> getSpecialPizza() {
		return specialPizza;
	}

	public void setSpecialPizza(List<String> specialPizza) {
		this.specialPizza = specialPizza;
	}

	public PizzaSize getSize() {
		return size;
	}

	public void setSize(PizzaSize size) {
		this.size = size;
	}

	public void setSize(String sizeString) {
		this.size = PizzaSize.valueOf(sizeString);
	}

	public List<Topping> getToppings() {
		return toppings;
	}

	public void setToppings(List<Topping> toppings) {
		this.toppings = toppings;
	}

	public void setToppings(String[] toppingStrings) {
		for (int i = 0; i < toppingStrings.length; i++) {
			toppings.add(Topping.valueOf(toppingStrings[i]));
		}
	}
}

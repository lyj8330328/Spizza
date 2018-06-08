package main.java.com.springinaction.pizza.service;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import main.java.com.springinaction.pizza.domain.Pizza;
import main.java.com.springinaction.pizza.domain.PizzaSize;

@SuppressWarnings("serial")
public class PricingEngineImpl implements PricingEngine, Serializable {
	private static final Logger LOGGER = Logger.getLogger(PricingEngineImpl.class);

	private static Map<PizzaSize, Float> SIZE_PRICES;
	static {
		SIZE_PRICES = new HashMap<PizzaSize, Float>();
		SIZE_PRICES.put(PizzaSize.SMALL, 7.00f);
		SIZE_PRICES.put(PizzaSize.MEDIUM, 8.00f);
		SIZE_PRICES.put(PizzaSize.LARGE, 9.00f);
		SIZE_PRICES.put(PizzaSize.GINORMOUS, 10.00f);
	}
	private static float PRICE_PER_TOPPING = 2.00f;

	public PricingEngineImpl() {
	}

	public float calculateOrderTotal(List<Pizza> pizzas) {

		float total = 0.0f;
		if (pizzas.size() == 0) {
			return total;
		} else {
			for (Pizza pizza : pizzas) {
				float pizzaPrice = SIZE_PRICES.get(pizza.getSize());
				if (pizza.getToppings().size() > 0) {
					pizzaPrice += (pizza.getToppings().size() * PRICE_PER_TOPPING);
				}
				pizza.setPrice(pizzaPrice);
				total += pizzaPrice;
			}

			return total;
		}
	}

}

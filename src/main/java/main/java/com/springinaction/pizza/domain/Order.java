package main.java.com.springinaction.pizza.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.util.StringUtils;

import main.java.com.springinaction.pizza.flow.SpecialtyPizza;
import main.java.com.springinaction.pizza.service.PricingEngineImpl;

@Configurable("order")
public class Order implements Serializable {
	private static final long serialVersionUID = 1L;
	private Customer customer;
	private List<Pizza> pizzas;
	private Payment payment;

	public Order() {
		pizzas = new ArrayList<Pizza>();
		customer = new Customer();
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<Pizza> getPizzas() {
		return pizzas;
	}

	public void setPizzas(List<Pizza> pizzas) {
		this.pizzas = pizzas;
	}

	public void addPizza(Pizza pizza) {
		// System.out.println(StringUtils.isEmpty(pizza.getToppings()));
		// System.out.println(StringUtils.isEmpty(pizza.getSpecialPizza()));

		Boolean pizza1 = StringUtils.isEmpty(pizza.getToppings());
		Boolean pizza2 = StringUtils.isEmpty(pizza.getSpecialPizza());

		if (pizza1 == false && pizza2 == true) {
			pizza.setIsCombo("—");
			pizzas.add(pizza);
		} else if (pizza1 == true && pizza2 == false) {
			SpecialtyPizza specialtyPizza = new SpecialtyPizza();
			List<Pizza> newPizzas = specialtyPizza.getPizza(pizza);
			for (Pizza temp : newPizzas) {
				pizzas.add(temp);
			}
		} else if (pizza1 == false && pizza2 == false) {
			pizza.setIsCombo("—");
			pizzas.add(pizza);
			SpecialtyPizza specialtyPizza = new SpecialtyPizza();
			List<Pizza> newPizzas = specialtyPizza.getPizza(pizza);
			for (Pizza temp : newPizzas) {
				pizzas.add(temp);
			}
		}
	}

	public float getTotal() {
		PricingEngineImpl pricingEngineImpl = new PricingEngineImpl();
		List<Pizza> pizzas = this.getPizzas();

		return pricingEngineImpl.calculateOrderTotal(pizzas);
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
		payment.setAmount(this.getTotal());
	}

}

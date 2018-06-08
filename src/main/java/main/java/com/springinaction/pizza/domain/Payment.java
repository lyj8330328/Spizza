package main.java.com.springinaction.pizza.domain;

import java.io.Serializable;

public abstract class Payment implements Serializable {
	private static final long serialVersionUID = 1L;

	private float amount;
	private String creditCardNumber;

	public String getCreditCardNumber() {
		return creditCardNumber;
	}

	public void setCreditCardNumber(String creditCardNumber) {
		this.creditCardNumber = creditCardNumber;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public float getAmount() {
		return amount;
	}
}

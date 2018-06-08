package main.java.com.springinaction.pizza.domain;

public class CreditCardPayment extends Payment {
	public CreditCardPayment() {
	}

	public String toString() {
		return "CREDIT:  ￥" + getAmount() + " ; AUTH: " + this.getCreditCardNumber();
	}
}

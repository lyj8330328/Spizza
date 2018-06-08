package main.java.com.springinaction.pizza.flow;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.com.springinaction.pizza.domain.CashOrCheckPayment;
import main.java.com.springinaction.pizza.domain.CreditCardPayment;
import main.java.com.springinaction.pizza.domain.Customer;
import main.java.com.springinaction.pizza.domain.Order;
import main.java.com.springinaction.pizza.domain.Payment;
import main.java.com.springinaction.pizza.domain.PaymentDetails;
import main.java.com.springinaction.pizza.domain.PaymentType;
import main.java.com.springinaction.pizza.service.CustomerNotFoundException;
import main.java.com.springinaction.pizza.service.CustomerService;

@Service
public class PizzaFlowActions {

	private static final Logger LOGGER = Logger.getLogger(PizzaFlowActions.class);

	public Customer lookupCustomer(String phoneNumber) throws CustomerNotFoundException {
		Customer customer = customerService.lookupCustomer(phoneNumber);
		if (customer != null) {
			return customer;
		} else {
			throw new CustomerNotFoundException();
		}
	}

	public void addCustomer(Customer customer) {
		LOGGER.warn("TODO: Flesh out the addCustomer() method.");
	}

	public Payment verifyPayment(PaymentDetails paymentDetails) {
		Payment payment = null;
		if (paymentDetails.getPaymentType() == PaymentType.CREDIT_CARD) {
			payment = new CreditCardPayment();
			payment.setCreditCardNumber(paymentDetails.getCreditCardNumber());
		} else {
			payment = new CashOrCheckPayment();
		}

		return payment;
	}

	public void saveOrder(Order order) {
		LOGGER.warn("TODO: Flesh out the saveOrder() method.");
	}

	public boolean checkDeliveryArea(String zipCode) {
		LOGGER.warn("TODO: Flesh out the checkDeliveryArea() method.");
		return "75075".equals(zipCode);
	}

	@Autowired
	CustomerService customerService;
}

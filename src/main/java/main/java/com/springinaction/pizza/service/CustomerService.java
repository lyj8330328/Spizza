package main.java.com.springinaction.pizza.service;

import main.java.com.springinaction.pizza.domain.Customer;

public interface CustomerService {
	Customer lookupCustomer(String phoneNumber) throws CustomerNotFoundException;
}
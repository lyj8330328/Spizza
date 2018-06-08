<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Spring Pizza</title>

</head>
<body>
	<div align="center">
		<h2>Your order</h2>

		<h3>Deliver to:</h3>
		<table>
			<tr>
				<td>name</td>
				<td>${order.customer.name}</td>
			</tr>
			<tr>
				<td>address</td>
				<td>${order.customer.address}</td>
			</tr>
			<tr>
				<td>city</td>
				<td>${order.customer.city}</td>
			</tr>
			<tr>
				<td>state</td>
				<td>${order.customer.state}</td>
			</tr>
			<tr>
				<td>zipCode</td>
				<td>${order.customer.zipCode}</td>
			</tr>
			<tr>
				<td>phoneNumber</td>
				<td>${order.customer.phoneNumber}</td>
			</tr>
		</table>
		<hr />
		<h3>
			Order total:
		 <fmt:formatNumber type="currency" value="${order.total}"></fmt:formatNumber>
			
		</h3>
		<hr />
		<h3>Pizzas:</h3>

		<c:if test="${fn:length(order.pizzas) eq 0}">
			<b>No pizzas in this order.</b>
		</c:if>

		<br />
		<table border="1">
			<tr>
				<th>Size</th>
				<th>Toppings</th>
				<th>IsCombo</th>
				<th>Price</th>
			</tr>
			<c:forEach items="${order.pizzas }" var="pizza">
				<tr>
					<td align="center">${pizza.size}</td>
					<td align="center">
					<table border="0.2">
						<tr>
						<c:forEach items="${pizza.toppings}" var="topping">		
								<td><c:out value="${topping}" /></td>			
						</c:forEach>
						</tr>
					</table>
					</td>
					<td align="center">${pizza.isCombo }</td>
					<td align="center">${pizza.price }</td>
				</tr>
			</c:forEach>
		</table>

		<form:form>
			<input type="hidden" name="_flowExecutionKey"
				value="${flowExecutionKey}" />
			<input type="submit" name="_eventId_createPizza" value="Create Pizza" />
			<c:if test="${fn:length(order.pizzas) gt 0}">
				<input type="submit" name="_eventId_checkout" value="Checkout" />
			</c:if>
			<input type="submit" name="_eventId_cancel" value="Cancel" />
		</form:form>
	</div>
</body>
</html>
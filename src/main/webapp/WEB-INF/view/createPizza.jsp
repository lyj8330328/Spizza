<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div align="center">

		<h2>Create Pizza</h2>
		<form:form commandName="pizza" >
			<input type="hidden" name="_flowExecutionKey"
				value="${flowExecutionKey}" />

			<b>Size: </b>
			<br />
			<table>
				<tr>
					<td><form:radiobutton path="size" label="Small (12-inch)——————￥7.00"
							value="SMALL" /></td>
				</tr>
				<tr>
					<td><form:radiobutton path="size" label="Medium (14-inch)——————￥8.00"
							value="MEDIUM" /></td>
				</tr>
				<tr>
					<td><form:radiobutton path="size" label="Large (16-inch)——————￥9.00"
							value="LARGE" /></td>
				</tr>
				<tr>
					<td><form:radiobutton path="size" label="Ginormous (20-inch)——————￥10.00"
							value="GINORMOUS" /></td>
				</tr>
			</table>
			<br />
			<br />
			<b>Toppings: PRICE_PER_TOPPING 2.00￥</b>
			<br />
			<table>
				<tr>
					<td>
					<form:checkboxes name="topping" path="toppings" items="${toppingsList}"
					delimiter="<br/>" />
					</td>
				</tr>		
			</table>
			<br />
			<br />
			<b>Hyperchannel</b>
			<table>
				<tr>
					<td><form:checkbox path="specialPizza" label="MEAT"
							value="MEAT" /></td>
				</tr>
				<tr>
					<td><form:checkbox path="specialPizza" label="VEGGIE"
							value="VEGGIE" /></td>
				</tr>
				<tr>
					<td><form:checkbox path="specialPizza" label="THEWORKS"
							value="THEWORKS" /></td>
				</tr>
			</table>
			<input type="submit" class="button" name="_eventId_addPizza"
				value="Continue" />
			<input type="submit" class="button" name="_eventId_cancel"
				value="Cancel" />
		</form:form>
	</div>

</body>
</html>




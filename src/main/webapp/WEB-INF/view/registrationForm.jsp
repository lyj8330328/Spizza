<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>Spring Pizza</title>
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
	<h2 align="center">Customer Registration</h2>
	<form:form commandName="order">
		<table align="center">
			<tr>
				<td><input type="hidden" name="_flowExecutionKey"
					value="${flowExecutionKey}" /></td>
			</tr>
			<tr>
				<td align="center">Phone number:</td>
				<td><form:input path="customer.phoneNumber" /></td>
			</tr>
			<tr>
				<td align="center">Name:</td>
				<td><form:input path="customer.name" /></td>
			</tr>
			<tr>
				<td align="center">Address:</td>
				<td><form:input path="customer.address" /></td>
			</tr>
			<tr>
				<td align="center">State:</td>
				<td><form:input path="customer.state" /></td>
			</tr>
			<tr>
				<td align="center">Zip Code:</td>
				<td><form:input path="customer.zipCode" /></td>
			</tr>
			<tr height="80px"></tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					name="_eventId_submit" value="Submit" /> &nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" name="_eventId_cancel" value="Cancel" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
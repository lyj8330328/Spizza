<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

		<script>
			function showCreditCardField() {
				var ccNumberStyle = document.paymentForm.creditCardNumber.style;
				ccNumberStyle.visibility = 'visible';
			}
		
			function hideCreditCardField() {
				var ccNumberStyle = document.paymentForm.creditCardNumber.style;
				ccNumberStyle.visibility = 'hidden';
			}
		</script>

		<h2>Take Payment</h2>
		<form:form commandName="paymentDetails" name="paymentForm">
			<table>
				<tr>
					<td><input type="hidden" name="_flowExecutionKey"
						value="${flowExecutionKey}" /></td>
				</tr>
				<tr>
					<td><form:radiobutton path="paymentType" value="CASH"
							label="Cash (taken at delivery)" onclick="hideCreditCardField()" /></td>
				</tr>
				<tr>
					<td><form:radiobutton path="paymentType" value="CHECK"
							label="Check (taken at delivery)" onclick="hideCreditCardField()" /></td>
				</tr>
				<tr>
					<td><form:radiobutton path="paymentType" value="CREDIT_CARD"
							label="Credit Card" onclick="showCreditCardField()" /></td>
					<td><form:input path="creditCardNumber"
							cssStyle="visibility:hidden;" /></td>
				</tr>
				<tr height="80px"></tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						class="button" name="_eventId_paymentSubmitted" value="Submit" />
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" class="button"
						name="_eventId_cancel" value="Cancel" /></td>
				</tr>
			</table>

		</form:form>
	</div>
</body>
</html>


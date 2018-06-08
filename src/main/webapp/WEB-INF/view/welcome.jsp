<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Welcome</title>

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
	<h2 align="center">Welcome to Spizza！！！</h2>
	<form:form>
		<table align="center">
			<tr>
				<td>phoneNumber</td>
				<td><input type="hidden" name="_flowExecutionKey"
					value="${flowExecutionKey}" /> <input type="text"
					name="phoneNumber" /><br /></td>
			</tr>
			<tr height="80px"></tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" name="_eventId_phoneEntered"
					value="Lookup Customer" /></td>
			</tr>
		</table>
	</form:form>
	<!-- 首先要注意的是隐藏的“_flowExecutionKey”输入域。
	当进入视图 状态时，流程暂停并等待用户采取一些行为。
	赋予视图的流程执行 key（flow execution key）就是一种返回流程的“回程票”（claim ticket）。
	当用户提交表单时，流程执行key会 在“_flowExecutionKey”输入域中返回并在流程暂停的位置进行恢 复。 
	-->
</body>
</html>

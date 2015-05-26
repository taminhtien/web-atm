<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Customer</title>
</head>
<body>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>CustID</th>
			<th>CustName</th>
			<th>Email</th>
			<th>Address</th>
		</tr>

		<c:forEach var="cust" items="${listCustomer}">
			<tr>
				<td>${cust.custId}</td>
				<td>${cust.custName}</td>
				<td>${cust.email}</td>
				<td>${cust.address}</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>
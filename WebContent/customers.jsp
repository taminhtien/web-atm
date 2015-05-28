<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-striped">
	<thead>
		<tr>
			<th>CustID</th>
			<th>CustName</th>
			<th>Email</th>
			<th>Address</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="cust" items="${listCustomer}">
			<tr>
				<td>${cust.custId}</td>
				<td>${cust.custName}</td>
				<td>${cust.email}</td>
				<td>${cust.address}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
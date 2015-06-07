<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-striped">
	<thead>
		<tr>
			<th>Card No</th>
			<th>Customer</th>
			<th>PIN</th>
			<th>Balance</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="card" items="${listCard}">
			<tr>
				<td>${card.cardNo}</td>
				<td>${card.customer.custName}</td>
				<td>${card.pin}</td>
				<td>${card.balance}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
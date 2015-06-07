<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Customer</title>
</head>
<body>
	<s:form method="post" action="customers.html">
		<s:textfield label="ID" name="cust.custId"></s:textfield>
		<s:textfield label="Cust Name" name="cust.custName"></s:textfield>
		<s:textfield label="Email" name="cust.email"></s:textfield>
		<s:textfield label="Address" name="cust.address"></s:textfield>
		<s:submit value="Save" align="left"></s:submit>
	</s:form>
</body>
</html>
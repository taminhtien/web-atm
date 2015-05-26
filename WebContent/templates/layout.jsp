<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<!-- Enable Responsive design -->
		<!-- Set screen ratio 1:1 -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>
	</head>
<body>
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<!-- Header -->
	<s:a action="index">Home</s:a>
	|
	<s:a action="about">About</s:a>
	|
	<s:a action="new">News</s:a>
	<br>
	<tiles:insertAttribute name="content"></tiles:insertAttribute>
	<br> Copyright tientm 2015
</body>
</html>
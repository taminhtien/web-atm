<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Enable Responsive design -->
<!-- Set screen ratio 1:1 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>
</head>
<body>
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<!-- Header -->
	<nav class="navbar navbar-fixed-top navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<s:a action="index" class="navbar-brand" id="logo">WEB ATM</s:a>
			</div>
			<div class="navbar-collapse collapse navbar-right" id="menu">
	            <ul class="nav navbar-nav">
	                <li><s:a action="about">About</s:a></li>
					<li><s:a action="new">News</s:a></li>
	            </ul>
	        </div>
		</div>
	</nav>
	<div class="container">
		<!-- Content -->
		<div class="row">
			<tiles:insertAttribute name="content"></tiles:insertAttribute>
		</div>
		<!-- Footer -->
		<footer style="text-align: center; border-top: 1px solid #777;">
			Copyright @tientm 2015 </footer>
	</div>
</body>
</html>
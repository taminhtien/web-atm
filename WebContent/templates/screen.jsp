<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<div class="col-md-8 col-md-offset-2" id="screen">
			<div class="row">
				<h2 class="text-center">WEB ATM</h2>
			</div>
			<div class="row">
				<div class="col-md-3 pull-left text-left">
					<a href="change-pin.jsp" class="btn btn-primary btn-atm"><span class="glyphicon glyphicon-chevron-left"></span> Change PIN</a>
					<br>
					<a href="check-balance.jsp" class="btn btn-primary btn-atm"><span class="glyphicon glyphicon-chevron-left"></span> Check Balance</a>
					<br>
					<a href="transfer.jsp" class="btn btn-primary btn-atm"><span class="glyphicon glyphicon-chevron-left"></span> Transfer</a>
				</div>
				<div class="col-md-6 col-content">
					<tiles:insertAttribute name="content"></tiles:insertAttribute>
				</div>
				<div class="col-md-3 pull-right text-right">
					<a href="withdraw.jsp" class="btn btn-primary btn-atm">Withdraw <span class="glyphicon glyphicon-chevron-right"></span></a>
					<br>
					<a href="view-history.jsp" class="btn btn-primary btn-atm">View history <span class="glyphicon glyphicon-chevron-right"></span></a>
					<br>
					<a href="exit.jsp" class="btn btn-primary btn-atm">Exit <span class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>
		</div>
		</div>
		<!-- Keypad -->
		<div class="row">
			<div class="center-block" style="width: 185px;">
				<div id="keypad">
					<button class="btn btn-default">1</button>
					<button class="btn btn-default">2</button>
					<button class="btn btn-default">3</button>
					<button class="btn btn-danger">Cancel</button>
				</div>
				<div id="keypad">
					<button class="btn btn-default">4</button>
					<button class="btn btn-default">5</button>
					<button class="btn btn-default">6</button>
					<button class="btn btn-warning">Clear</button>
				</div>
				<div id="keypad">
					<button class="btn btn-default">7</button>
					<button class="btn btn-default">8</button>
					<button class="btn btn-default">9</button>
					<button class="btn btn-info">Enter</button>
				</div>
			</div>
			<!-- 
			<div class="col-md-12">
				<button class="btn btn-default">1</button>
				<button class="btn btn-default">2</button>
				<button class="btn btn-default">3</button>
				<button class="btn btn-danger">Cancel</button>
			</div>
			<div class="col-md-12" style="margin-top: 5px;">
				<button class="btn btn-default">4</button>
				<button class="btn btn-default">5</button>
				<button class="btn btn-default">6</button>
				<button class="btn btn-warning">Clear</button>
			</div>
			<div class="col-md-12" style="margin-top: 5px;">
				<button class="btn btn-default">7</button>
				<button class="btn btn-default">8</button>
				<button class="btn btn-default">9</button>
				<button class="btn btn-info">Enter</button>
			</div>
			
			 -->
		</div>
		<!-- Footer -->
		<footer style="text-align: center; border-top: 1px solid #777;">
			Copyright @tientm 2015 </footer>
	</div>
</body>
</html>
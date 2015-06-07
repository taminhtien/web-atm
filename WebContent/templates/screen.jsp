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
	
	<!-- Body -->
	<div class="container">	
		<!-- Screen -->
		<div class="row">
			<div class="col-md-8 col-md-offset-2" id="screen">
			
				<!-- Banner -->
				<div class="row" id="header">
					<h2><span class="glyphicon glyphicon-usd"></span> Online Banking <small style="color: white;">Secure access to banking services</small></h2>
				</div>
				<!-- End Banner -->
			
				<!-- Content -->
				<div class="row">
			
					<!-- Left Column Button -->
					<div class="col-md-3 pull-left text-left">
						<a href="change-pin.jsp" class="btn btn-primary btn-atm"><span class="glyphicon glyphicon-chevron-left"></span> Change PIN</a>
						<br>
						<a href="check-balance.jsp" class="btn btn-primary btn-atm"><span class="glyphicon glyphicon-chevron-left"></span> Check Balance</a>
						<br>
						<a href="transfer.jsp" class="btn btn-primary btn-atm"><span class="glyphicon glyphicon-chevron-left"></span> Transfer</a>
					</div>
					<!-- End Left Column Button -->
					
					<!-- Mid Column Content -->
					<div class="col-md-6 col-content">
						<tiles:insertAttribute name="content"></tiles:insertAttribute>
					</div>
					<!-- End Mid Column Content -->
					
					<!-- Right Column Button -->
					<div class="col-md-3 pull-right text-right">
						<a href="withdraw.jsp" class="btn btn-primary btn-atm">Withdraw <span class="glyphicon glyphicon-chevron-right"></span></a>
						<br>
						<a href="view-history.jsp" class="btn btn-primary btn-atm">View history <span class="glyphicon glyphicon-chevron-right"></span></a>
						<br>
						<a href="exit.jsp" class="btn btn-primary btn-atm">Exit <span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
					<!-- End Right Column Button -->
					
				</div>
				<!-- End Content -->
				
			</div>
		</div>
		<!-- End Screen -->
		
		<!-- Keypad -->
		<div class="row">
			<div class="center-block" style="width: 205px;">
				<div id="keypad">
					<button class="btn btn-default btn-number" id="key-1" value="1" onclick="inputdata(this)">1</button>
					<button class="btn btn-default btn-number" id="key-2" value="2" onclick="inputdata(this)">2</button>
					<button class="btn btn-default btn-number" id="key-3" value="3" onclick="inputdata(this)">3</button>
					<button class="btn btn-danger btn-key" id="key-cancel">Cancel</button>
				</div>
				<div id="keypad">
					<button class="btn btn-default btn-number" id="key-4" value="4" onclick="inputdata(this)">4</button>
					<button class="btn btn-default btn-number" id="key-5" value="5" onclick="inputdata(this)">5</button>
					<button class="btn btn-default btn-number" id="key-6" value="6" onclick="inputdata(this)">6</button>
					<button class="btn btn-warning btn-key" id="key-clear">Clear</button>
				</div>
				<div id="keypad">
					<button class="btn btn-default btn-number" id="key-7" value="7" onclick="inputdata(this)">7</button>
					<button class="btn btn-default btn-number" id="key-8" value="8" onclick="inputdata(this)">8</button>
					<button class="btn btn-default btn-number" id="key-9" value="9" onclick="inputdata(this)">9</button>
					<button class="btn btn-info btn-key" id="key-enter">Enter</button>
				</div>
				<div id="keypad">
					<button class="btn btn-default btn-number" id="key-0" value="0" onclick="inputdata(this)">0</button>
					<button class="btn btn-default btn-number" id="key-00" value="00" onclick="inputdata(this)">00</button>
				</div>
			</div>
		</div>
		<!-- End Keypad -->
		
		<!-- Footer -->
		<footer style="text-align: center; border-top: 1px solid #777;">
			Copyright @tientm 2015
		</footer>
		<!-- End Footer -->
	</div>
	
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		<tiles:insertAttribute name="script"></tiles:insertAttribute>
	</script>
</body>
</html>
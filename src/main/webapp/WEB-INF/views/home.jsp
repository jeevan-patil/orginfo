<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Organization information</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body data-spy="scroll" data-target=".navbar-example">

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">OrgInfo</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#.">Organizations</a></li>
					<li><a href="#.">BU</a></li>
					<li><a href="#.">Employees</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container">
		<div class="starter-template">
			<h1>Organization Information</h1>
			<p class="lead">
				Sample application written to learn AngularJS.<br>
				Application manages information about organization (Business Units, Employees).<br>
				Spring framework is used to write restful services which provide JSON data.
			</p>
		</div>
	</div>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/angular.js"></script>
</body>
</html>

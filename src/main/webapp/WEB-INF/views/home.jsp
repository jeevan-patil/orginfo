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
<body data-spy="scroll" data-target=".navbar-example" data-ng-app="orgInfoApp">

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
				<a class="navbar-brand" href="./#/">OrgInfo</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a data-ui-sref="organizations">Organizations</a></li>
					<li><a data-ui-sref="bu">BU</a></li>
					<li><a data-ui-sref="emp">Employees</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div data-ui-view></div>

    <div class="navbar navbar-inverse navbar-fixed-bottom">
      <div class="container ">
        <div class="row">
          <div class="col-md-12 text-center">
            <p style="color: white;">Build with <span class="glyphicon glyphicon-heart"></span></p>
          </div>
        </div>
      </div>
    </div>

	<!-- libraries -->
	<script src="${pageContext.request.contextPath}/resources/script/lib/jquery-1.11.0.js"></script>
    <script src="${pageContext.request.contextPath}/resources/script/lib/angular.js"></script>
    <script src="${pageContext.request.contextPath}/resources/script/lib/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/script/lib/angular-animate.js"></script>
    <script src="${pageContext.request.contextPath}/resources/script/lib/angular-cookies.js"></script>
    <script src="${pageContext.request.contextPath}/resources/script/lib/angular-resource.js"></script>
    <script src="${pageContext.request.contextPath}/resources/script/lib/angular-route.js"></script>
    <script src="${pageContext.request.contextPath}/resources/script/lib/angular-sanitize.js"></script>
    <script src="${pageContext.request.contextPath}/resources/script/lib/angular-touch.js"></script>
    <script src="${pageContext.request.contextPath}/resources/script/lib/ui-bootstrap-tpls.js"></script>
    <script src="${pageContext.request.contextPath}/resources/script/lib/angular-ui-router.js"></script>

	<!-- JavaScript files written by dev's -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/app.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/app/org/controller/orglist.controller.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/app/home/controller/home.controller.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/app/bunit/controller/bunit.controller.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/app/employee/controller/emp.controller.js"></script>
</body>
</html>

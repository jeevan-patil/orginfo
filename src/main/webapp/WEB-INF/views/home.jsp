<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Organization information</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
</head>
<body  data-spy="scroll" data-target=".navbar-example">
	<div>
		<nav class="navbar navbar-inverse navbar-fixed-top navbar-example">
	        <div class="container">
	            <div class="navbar-header">
	                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
	                        aria-expanded="false" aria-controls="navbar">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </button>
	                <a class="navbar-brand" href="#">Orginfo</a>
	            </div>
	            <div id="navbar" class="navbar-collapse collapse">
	                <ul class="nav navbar-nav">
	                </ul>
	                <ul class="nav navbar-nav navbar-right">
	                </ul>
	            </div>
	        </div>
	    </nav>
	</div>
	<br/><br/><br/>

	<div class="container">
		<div class="row">
			<div class="col-sm">
				<h3>List of users:</h3>
				<table class="table table-striped" style="width: 70%;">
					<th>Name</th><th>Email</th><th>City</th><th>State</th><th>Country</th>
						<c:choose>
							<c:when test="${not empty users}">
					       		<c:forEach var="user" items="${users}">
					       			<tr><td>${user.fullName}</td><td><a href="mailto:${user.email}">${user.email}</a></td><td>${user.city}</td><td>${user.state}</td><td>${user.country}</td></tr>
					       		</c:forEach>
					    	</c:when>
							<c:otherwise>
					        	<tr><td colspan="5">No users found in the system.</td></tr>
						    </c:otherwise>
						</c:choose>
				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-1.11.0.js"></script>
</body>
</html>
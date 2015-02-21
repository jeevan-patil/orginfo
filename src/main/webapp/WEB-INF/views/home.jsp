<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Organization information</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<h1>List of users:</h1>
	<table style="width: 70%;">
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-1.11.0.js"></script>
</body>
</html>
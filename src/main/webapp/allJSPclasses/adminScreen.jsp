<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
</head>
<link rel="stylesheet" href="adminScreen.css">
<form action="<%=request.getContextPath()%>/adminFlightServlet" method="post" class="search_form">
</form>
<body>
	<div class="top_container"> 
		<h1 id="top_title">Travel Agency</h1>
	</div>
	<div>
		<ul>
		  <li><a class="active" href="#home">Home</a></li>
		  <li><a href="scheduleTable.jsp">Scheduled Flights</a></li>
		  <li><a href="createFlight.jsp">Create a flight</a></li>
		  <li><a href="chooseFlight.jsp">Schedule a flight</a></li>
		  <li><a href="adminUserTable.jsp">Customers</a></li>
		</ul>
	</div>
	<div class="right">
		<h1>HOME</h1>
	</div>
</body>
</html>
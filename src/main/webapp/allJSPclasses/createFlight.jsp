<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
</head>
<link rel="stylesheet" href="adminScreen.css">
<body>
	<div class="top_container"> 
		<h1 id="top_title">Travel Agency</h1>
	</div>
	<div>
		<ul>
		  <li><a href="adminScreen.jsp">Home</a></li>
		  <li><a href="scheduleTable.jsp">Scheduled Flights</a></li>
		  <li><a class="active" href="#flights">Create a flight</a></li>
		  <li><a href="chooseFlight.jsp">Schedule a flight</a></li>
		  <li><a href="adminUserTable.jsp">Customers</a></li>
		  
		</ul>
	</div>
	<div class="right">
		<%if(session.getAttribute("error")!=null){ %>
			<%boolean error = (boolean)session.getAttribute("error"); %>
			<%if(error == true ){ %>
				<h1>ERROR</h1>
			<%}%>
		<%}%>
		<h1>Flight Creation:</h1>
		<h4>Create a flight:</h4>
		<form action="<%=request.getContextPath()%>/createFlightServlet" method="post" class="search_form">
			<input type="text" name="flightID" autofocus placeholder="Flight ID" required>
			<input type="text" name="flightName" autofocus placeholder="Flight Name" required>
			<input type="text" name="airlineCode" autofocus placeholder="Airline Code" required>
			<br><input type="submit" value="Create Flight"><br>
		</form>
	</div>
</body>
</html>
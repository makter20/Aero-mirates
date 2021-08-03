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
		  <li><a href="createFlight.jsp">Create a flight</a></li>
		  <li><a class="active" href="#flights">Schedule a Flight</a></li>
		  <li><a href="adminUserTable.jsp">Customers</a></li>
		</ul>
	</div>
	<div class="right">
		<%if(session.getAttribute("added")!=null){ %>
			<%boolean added = (boolean)session.getAttribute("added"); %>
			<%if(added == true){ %>
				<h1>Added Flight to Scheduled Flights Table!</h1>
			<%}%>
		<%}%>
		<h1>Create a new schedule for your selected flight:</h1>
		<form action="<%=request.getContextPath()%>/scheduleInputServlet" method="post" class="search_form">
			<input type="text" name="scheduleID" autofocus placeholder="Schedule ID" required>
			<input type="text" name="flightID" autofocus placeholder="Flight ID" required>
			<input type="text" name="departure" autofocus placeholder="Departure" required>
			<input type="text" name="arrival" autofocus placeholder="Arrival" required>
			<input type="text" name="capacity" autofocus placeholder="Capacity" required>
			<input type="text" name="scheduleDate" autofocus placeholder="Schedule Date" required>
			<input type="text" name="scheduleTime" autofocus placeholder="Schedule Time" required>
			<input type="text" name="returnDate" autofocus placeholder="Return Date" required>
			
			<br><input type="submit" value="Input flight"><br>
		</form>
		</div>
	</div>
</body>
</html>
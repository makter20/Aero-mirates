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
<form action="<%=request.getContextPath()%>/adminFlightTable" method="post" class="search_form">
</form>
<%@ page import="java.util.*" %>
<body>
	<div class="top_container"> 
		<h1 id="top_title">Travel Agency</h1>
	</div>
	<div>
		<ul>
		  <li><a href="adminScreen.jsp">Home</a></li>
		  <li><a class="active" href="#flights">Flights</a></li>
		  <li><a href="#data">Customers</a></li>
		</ul>
	</div>
	<div class="right">
		<h1>Flight Status:</h1>
		<div>
			<table border="1">
				<tr>
					<td>Flight ID</td>
					<td>Departure Airline</td>
					<td>Arrival Airline</td>
					<td>Date</td>
				</tr>
			</table>
		</div>
			<%List<List<String>>flights=(List<List<String>>)session.getAttribute("scheduledFlights"); %>
			
			<%for(List<String>f:flights) { %>
				<tr>
					<td><% out.println(f); %></td>
			        <td><% out.println(f); %></td>
			        <td><% out.println(f); %></td>
			        <td><% out.println(f); %></td>
				</tr>
				<%}%> 
			 
			<input type="submit" id="submit" name="Input a flight" value="Input a flight">
	</div>
</body>
</html>
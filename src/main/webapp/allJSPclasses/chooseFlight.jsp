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
		  <li><a class="active" href="#flights">Schedule a flight</a></li>
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
		<h1>Flight Scheduler:</h1>
		<h4>Choose a flight from the table of flights:</h4>
		<form action="<%=request.getContextPath()%>/refreshChooseFlightServlet" method="post" class="search_form">
			<input type="submit" value="Refresh">
		</form>
		<form action="<%=request.getContextPath()%>/chooseFlightServlet" method="post" class="search_form">
			<input type="text" name="flightID" autofocus placeholder="Flight ID" required>
			<input type="text" name="flightName" autofocus placeholder="Flight Name" required>
			<input type="text" name="airlineName" autofocus placeholder="Airline Name" required>
			<br><input type="submit" value="Choose Flight"><br>
		</form>
		<div>
			<table border="1">
				<tr>
					<td>Flight ID</td>
					<td>Flight Name</td>
					<td>Airline Name</td>
				</tr>
				<%List<List<String>>flights=(List<List<String>>)session.getAttribute("chooseFlights"); %>
				<%if(flights != null){ %>
					<%for(List<String>f:flights) { %>
						<tr class="flightRow">
							<td><% out.println(f.get(0)); %></td>
					        <td><% out.println(f.get(1)); %></td>
					        <td><% out.println(f.get(2)); %></td>
						</tr>
					<%}%> 
				<%}%>
			 </table>
		</div>
	</div>
</body>
</html>
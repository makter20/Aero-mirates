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
		  <li><a class="active" href="#flights">Flights</a></li>
		  <li><a href="#data">Customers</a></li>
		</ul>
	</div>
	<div class="right">
		<%if(session.getAttribute("error")!=null){ %>
			<%boolean error = (boolean)session.getAttribute("error"); %>
			<%if(error == true ){ %>
				<h1>ERROR</h1>
			<%}%>
		<%}%>
		<h1>Flight Status:</h1>
		<form action="<%=request.getContextPath()%>/adminFlightServlet" method="post" class="search_form">
			<input type="submit" value="Refresh">
		</form>
		<form action="<%=request.getContextPath()%>/adminFlightInputServlet" method="post" class="search_form">
			<input type="text" name="scheduleID" autofocus placeholder="Schedule ID" required>
			<input type="text" name="flightID" autofocus placeholder="Flight ID" required>
			<input type="text" name="departure" autofocus placeholder="Departure" required>
			<input type="text" name="arrival" autofocus placeholder="Arrival" required>
			<input type="text" name="capacity" autofocus placeholder="Capacity" required>
			<input type="text" name="scheduleDate" autofocus placeholder="Schedule Date" required>
			<br><input type="submit" value="Input flight"><br>
		</form>
		<div>
			<table border="1">
				<tr>
					<td>Flight ID</td>
					<td>Departure Airline</td>
					<td>Arrival Airline</td>
					<td>Capacity</td>
					<td>Schedule Date</td>
				</tr>
			<%List<List<String>>flights=(List<List<String>>)session.getAttribute("scheduledFlights"); %>
			<%if(flights != null){ %>
				<%for(List<String>f:flights) { %>
					<tr>
						<td><% out.println(f.get(5)); %></td>
				        <td><% out.println(f.get(1)); %></td>
				        <td><% out.println(f.get(2)); %></td>
				        <td><% out.println(f.get(3)); %></td>
				        <td><% out.println(f.get(4)); %></td>
					</tr>
				<%}%> 
			<%}%>
			 </table>
		</div>
	</div>
</body>
</html>
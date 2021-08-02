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
<script src="createFlight.js"></script>
	<div class="top_container"> 
		<h1 id="top_title">Travel Agency</h1>
	</div>
	<div>
		<ul>
		  <li><a href="adminScreen.jsp">Home</a></li>
		  <li><a href="adminFlightPage.jsp">Schedule</a></li>
		  <li><a class="active" href="#flights">Add a flight</a></li>
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
		<h1>Choose a flight:</h1>
		<form action="<%=request.getContextPath()%>/adminFlightInputServlet" method="post" class="search_form">
			<input type="submit" value="Refresh">
		</form>
		<form class="flightForm" action="<%=request.getContextPath()%>/adminFlightInputServlet" method="post">
			<input type="text" id="flightId" name="flightID" autofocus placeholder="Schedule ID" required>
			<input type="text" id="flightName" name="flightName" autofocus placeholder="Flight ID" required>
			<input type="text" id="airlineName" name="airlineName" autofocus placeholder="Departure" required>
		</form>
		<form action="<%=request.getContextPath()%>/adminFlightInputServlet" method="post" class="search_form">
			<input type="text" name="flightID" autofocus placeholder="Schedule ID" required>
			<input type="text" name="flightName" autofocus placeholder="Flight ID" required>
			<input type="text" name="airlineName" autofocus placeholder="Departure" required>
			<br><input type="submit" value="Input flight"><br>
		</form>
		<div>
			<table border="1">
				<tr>
					<td>Flight ID</td>
					<td>Flight Name</td>
					<td>Airline Name</td>
				</tr>
				<%List<List<String>>flights=(List<List<String>>)session.getAttribute("flights"); %>
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
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
		  <li><a href="chooseFlight.jsp">Schedule a flight</a></li>
		  <li><a class="active" href="#customers">Customers</a></li>
		</ul>
	</div>
	<div class="right">
		<%if(session.getAttribute("error")!=null){ %>
			<%boolean error = (boolean)session.getAttribute("error"); %>
			<%if(error == true ){ %>
				<h1>ERROR</h1>
			<%}%>
		<%}%>
		<h1>User Table:</h1>
		<form action="<%=request.getContextPath()%>/userTableServlet" method="post" class="search_form">
			<input type="submit" value="Refresh">
		</form>
		<div>
			<table border="1">
				<tr>
					<td>UserID</td>
					<td>First Name</td>
					<td>Last Name</td>
					<td>Phone Number</td>
					<td>Email</td>
					<td>DOB</td>
				</tr>
			<%List<List<String>>users=(List<List<String>>)session.getAttribute("users"); %>
			<%if(users != null){ %>
				<%for(List<String>f:users) { %>
					<tr>
						<td><% out.println(f.get(0)); %></td>
				        <td><% out.println(f.get(1)); %></td>
				        <td><% out.println(f.get(2)); %></td>
				        <td><% out.println(f.get(4)); %></td>
				        <td><% out.println(f.get(5)); %></td>
				        <td><% out.println(f.get(7)); %></td>
					</tr>
				<%}%> 
			<%}%>
			 </table>
		</div>
	</div>
</body>
</html>
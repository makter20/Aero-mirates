<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html">
<link rel="stylesheet" href="searchResults.css">
<title>Flights</title>
</head>
<%@ page import="java.util.*"%>
<body>

<header>

<div class="nav_container">

<nav class="nav_bar">
<ul>
<li><a class="active" href="userScreen.jsp">Search Page</a></li>
</ul>
</nav>
</div>
</header>

<div class="filter_container">
<form action="<%=request.getContextPath()%>/filterServlet" method="post">
<label for="Filter_by_date">Filter by date:
</label>
<input type="date" name="filter_date">
<input type="search" id="departing_from" name='departing_from' placeholder="Departing from...">
<input type="search" id="going_to" name="going_to" placeholder="Going to...">
<input type="submit" value="Submit">
</form>


</div>

<table class="table">
<tr> 
<th>Click here to book</th>
<th>Flight Number</th>
<th>Departing From</th>
<th>Going to </th>
<th>Date</th>
<th>Available seats</th>
</tr>


<%List<List<String>> flights = (List<List<String>>)session.getAttribute("scheduledFlights"); %>
<%session.setAttribute("scheduledFlights", null); %>
<%if (flights !=null) { %>
<% for (List<String> s: flights) {%>

<tr>
<td>

<form action="booking.jsp" method="post">
<input type="submit" name="submit_id" style="background:none" value="<%=s.get(0)%>" readonly>
</form>
</td>
<td><%=s.get(5)%></td>

<td >
<%=s.get(1)%>
</td>

<td>
<%=s.get(2)%>
</td>

<td><%=s.get(4)%></td>
<td><%=s.get(3)%></td>
</tr>
<% } %>

<%} else { %>


<%List<List<String>> filter = (List<List<String>>)session.getAttribute("filterFlights"); %>
<%if(filter!=null) { %>

<% for (List<String> s: filter) {%>

<tr>
<td>

<form action="booking.jsp" method="post">
<input type="submit" name="submit_id" style="background:none" value="<%=s.get(0)%>" readonly>
</form>
</td>
<td><%=s.get(5)%></td>

<td >
<%=s.get(1)%>
</td>

<td>
<%=s.get(2)%>
</td>

<td><%=s.get(4)%></td>
<td><%=s.get(3)%></td>
</tr>
<% } %>


<%} else { %>

<%out.println("No flights found!"); %>
<%} %> 
<%} %>

</table>

</body>
</html>
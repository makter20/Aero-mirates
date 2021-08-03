<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="searchResults.css">
<title>Book flight</title>
</head>
<body>

<header>

<div class="nav_container">

<nav class="nav_bar">
<ul>
<li><a class="active" href="searchResults.jsp">Cancel booking</a></li>
</ul>
</nav>
</div>
</header>
<form action="<%=request.getContextPath()%>/bookingServlet" method="post" id="booking_form" style="margin-left:25%">
<h1 style="font-size:20px">Book your flight</h1>
<label for="scheduleId">Schedule Id:
<input type="text" name="scheduleId" value="<%=request.getParameter("submit_id")%>" readonly>
</label><br><br>
<label for="emailId">Email:
<input type="email" name="email">
</label><br><br>
<label for="flight_date">Flight date
<input type="date" name="flight_date">
</label><br><br>
<label for="seat">Seat-Number:
<input type="number" name="seat_number" min="1">
</label>
<input type="submit" name="book" value="Submit">
</form>
<div>

<%if(session.getAttribute("email") != null){ %>
<%String error = (String)session.getAttribute("email"); %>
<%if(error.equals("Email does not match")){ %>
<p style="text-color:red">Email does not match</p>
<%session.setAttribute("email", null);%>
<%} %>

<%} %>
</div>

<div>

<%if(session.getAttribute("seat") != null){ %>
<%String error = (String)session.getAttribute("seat"); %>
<%if(error.equals("Seat is not available")){ %>
<p style="text-color:red">Seat is not available</p>
<%session.setAttribute("seat", null);%>
<%} %>

<%} %>
</div>

</body>
</html>
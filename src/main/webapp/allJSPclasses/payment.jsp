<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment</title>
<link rel="stylesheet" href="user_admin.css">
</head>
<body>
<div class="top_container"> 
<h1 id="top_title">Travel Agency</h1>
</div>
<h1 class="payment">
Successfully booked!<br>Make your payment here
</h1>

<div class="form_container">
<div class="inner_box">
<form action="<%=request.getContextPath()%>/paymentServlet" method="post" class="search_form">

<div class="inner_div">
<label for="paymentMode">Payment Mode
<select id="paymentMode" name="paymentMode">
<option value="card"> Credit card</option>
<option value="card"> Debit card</option>
</select><br><br>
</label>
</div>

<div class="inner_div">

<label for="amount">Amount
<input type="text" name="amount">
</label>
</div>

<div class="inner_div">

<label for="bookingId">Booking-ID:
<input type="text" name="bookingId" value="<%=session.getAttribute("bookingId")%>" readonly>
</label>
</div>

<div class="inner_div">
<input type="submit" id="submit" name="submit" value="Make your payment">
</div>

</form>

<div class="inner_div">
<form action="<%=request.getContextPath()%>/cancelBookingServlet" method="post">
<input type="submit" id="submit" name="cancel_booking" value="Cancel the booking">
</form>
</div>
</div>
</div>

</body>
</html>
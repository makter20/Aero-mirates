<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
</head>
<link rel="stylesheet" href="user_admin.css">
<body>
<div class="top_container"> 
<h1 id="top_title">Travel Agency</h1>
</div>

<div class="form_container">
<div class="inner_box" style="margin-top:200px">
<form action="<%=request.getContextPath()%>/searchServlet" method="post" class="search_form">

<div class="inner_div">
<input type="search" id="departing_from" name='departing_from' autofocus placeholder="Departing from...">
<input type="search" id="going_to" name="going_to" autofocus placeholder="Going to...">
</div>

<!-- <div class="inner_div">
<label for="leaving_date">Departing-Date:
</label>
<input type="date" name="departing_date">

<label for="returning_date">Returning-Date:
</label>
<input type="date" name="returning_date">
</div> -->

<div class="inner_div">
<input type="submit" id="submit" name="submit" value="Find Your Flight">
</div>

</form>
</div>
</div>

<!-- </div> -->
</body>
</html>
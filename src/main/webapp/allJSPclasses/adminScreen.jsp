<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
</head>
<link rel="stylesheet" href="adminScreenLogin.css">
<body>
<!-- <div class="full_container"> -->
<div class="top_container"> 
<h1 id="top_title">Admin Screen</h1>
</div>

<div class="form_container">
<div class="inner_box">
<form action="<%=request.getContextPath()%>/searchServlet" method="post" class="search_form">

<div class="inner_div">
	<input type="submit" id="submit" name='Customers' value="Customers">
	<input type="submit" id="submit" name="Input a flight" value="Input a flight">
</div>

</form>
</div>
</div>

<!-- </div> -->
</body>
</html>
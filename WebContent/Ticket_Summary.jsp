<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.flyaway.Search" %>
    <%@page import="com.flyaway.Booking" %>
    
    <%
    Booking.name_on_card = request.getParameter("name_on_card");
    Booking.card_details = request.getParameter("card_number");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway Airline Ticket Booking Details</title>
<style>
nav {
	position: relative;
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin: -8px;
	padding: 12px;
	background-color: black;
	opacity: 0.5;
}
.home, .admin {
	font-size: 20px;
	text-decoration: none;
	color: white;
}
.home:hover, .admin:hover{
color: #dce1de;
}
button:hover{
background-color: #57cc99;
}
button {
	background-color: #80ed99;
	color: white;
	padding: 12px 250px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
footer {
	position: relative;
	color: black;
	padding: 9px 25px;
	text-align: center;
}


</style>
</head>
<body>
<nav>
<a class="home" href="index.html">FlyAway</a>
<a class="admin" href="Admin_Login.jsp">Admin Login</a>
</nav>
<div class="container">
<h2 align="center">Thank You And Happy Journey</h2>
<h3 align="center">Your Ticket Has Been Booked Successfully.</h3>
<h3 align="center">Ticket Summary Is Given Below.</h3>
<div align="center">
<p><button onclick="window.print()" >Print Ticket</button></p>
</div>
		<h3>Ticket Summary</h3>
        <h4><strong><%=Search.source%> to <%=Search.destination%> | <%=Search.date%> (<%=Search.day%>)</strong></h4>
        <p align="left"><%=Booking.flight_booking_id%> - <%=Booking.flight_name%> (Travellers <%=Search.persons%>)</p><br>
        <br>
        
        <h3><strong>Passenger Details</strong></h3>
        <h3>Booking Name-<%=Booking.passenger_name%> | Email- <%=Booking.passenger_email%> | Phone- <%=Booking.passenger_phone%></h3>
        <br>
        
        <h3><strong>Payment Details</strong></h3>
        <h4>Payment By-<%=Booking.name_on_card%> | Card No- <%=Booking.card_details%></h4><br>
        <h2 align="right"><strong>Total Paid- Rs.<%=Search.persons*Booking.ticket_price%></strong></h2>


</div>
<footer>
		<div class="center">Copyright &copy; FlyAway developed by Sahil
			Jayswal. All rights reserved!</div>
</footer>
</body>
</html>
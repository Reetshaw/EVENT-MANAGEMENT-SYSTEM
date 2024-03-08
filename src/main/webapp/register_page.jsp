<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%-------<style><%@include file="./CSS/.css"%></style> --%>  
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EMP</title>
    <link rel="stylesheet" href="./style.css">
    
</head>
<body>

<form action="add.jsp" method="post">
    <div class="container">
        <h1 style="text-align: center">EVENT MANAGEMENT PORTAL</h1>
        <hr>
        <marquee scrollamount="10" style="color:red;">REGISTRATION WILL BE CLOSED ON 10TH MARCH</marquee>
        <hr>
<center>
<form action="add.jsp" method="post">
<table border="5">
<tr>
<td>Event name </td>
<td><input type="text" placeholder="john smith"  name="ename" required> </td>
</tr>
<tr>
<td>Event Location </td>
<td><input type="text"  placeholder="ASANSOL"   name="eloc"  required></td>
</tr>
<tr>
<td>Number of Participants </td>
<td><select name="nop" required>
     	<option>1</option>
     	<option>2</option>
     	<option>3</option>
     	<option>4</option>
     	<option>5</option>
     	<option>6</option>
     </select></td>
</tr>
<tr>
<td>Event Holder Name </td>
<td><input type="text"  placeholder="sam smith"   name="ehn"  required></td>
</tr>
<tr>
<td>Duration(In Hours) </td>
<td><select name= "dur" required>
     	<option>3 </option>
     	<option>6 </option>
     	<option>9 </option>
     </select></td>
</tr>
<tr>
<td>Payement</td>
<td><select name= "pay" required>
     	<option>UPI</option>
     	<option>DEBIT CARD</option>
     	<option>CREDIT CARD</option>
     </select></td>
</tr>
<tr>
<td>Event Type </td>
<td><select name= "et" required>
     	<option>TECHNICAL</option>
     	<option>NON-TECHNICAL</option>
     </select></td>
</tr>

<tr>
<td><button type="submit">Request </button></td>
<td><button type="reset">Reset details</button></td>
</tr>
</table>
</form>
</center>
</body>
</html>
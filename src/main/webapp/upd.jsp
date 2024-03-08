<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>
<%
Connection conn=null;
PreparedStatement pst = null;
ResultSet rs = null;
String Url = "jdbc:mysql://localhost/office";
String Username="root";
String Password="";
String id=request.getParameter("id");
String Query="select * from emp where id=?";
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn=DriverManager.getConnection(Url,Username,Password);
	pst=conn.prepareStatement(Query);
	pst.setInt(1,Integer.parseInt(id));
	rs=pst.executeQuery();
	while(rs.next()){
		%>
		<h1 style="color:blue"><center> Event Registration form</center></h1>
		<center>
		<form action="upds.jsp" method="post">
		<table border="5">
		<tr>
		<td>Participant id </td>
		<td> <input type="text" name="id" value = "<%=rs.getString("id") %>" readonly/ ></td>
		
		<tr>
		<td>Event name </td>
		<td><input type="text" value="<%=rs.getString("ename")%>" name="ename" required> </td>
		</tr>
		<tr>
		<td>Event Location </td>
		<td><input type="text"  value="<%=rs.getString("eloc")%>" name="eloc"  required></td>
		</tr>
		<tr>
		<td>Number of Participants </td>
		<td><select value="<%=rs.getString("nop")%>" name="nop" required>
     	<option>1</option>
     	<option>2</option>
     	<option>3</option>
     	<option>4</option>
     	<option>5</option>
     	<option>6</option>
     </select></td>
		</tr>
		<td>Event Holder Name </td>
		<td><input type="text" value="<%=rs.getString("ehn")%>" name="ehn"  required></td>
		</tr>
		<td>Duration (in Hours)</td>
		<td><<select value="<%=rs.getString("dur")%>" name= "dur" required>
     	<option>3 </option>
     	<option>6 </option>
     	<option>9 </option>
     </select></td>
		</tr>
		<td>Payment </td>
		<td><select value="<%=rs.getString("pay")%>" name= "pay" required>
     	<option>UPI</option>
     	<option>DEBIT CARD</option>
     	<option>CREDIT CARD</option>
     </select></td>
		</tr>
		<td>Event Type </td>
		<td><select value="<%=rs.getString("et")%>" name= "et" required>
     	<option>TECHNICAL</option>
     	<option>NON-TECHNICAL</option>
     </select></td>
		<tr>
		<td><button type="submit">Update Event </button></td>
		<td><button type="reset">Reset details</button></td>
		</tr>
		</table>
		</form>
		</center>
		<% 
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
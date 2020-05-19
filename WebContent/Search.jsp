<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description"content=""/>
<meta name="keywords" content=""/>
<title>AP Group Attendance</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="style.css"/>
<script type="text/javascript" src="jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.1.js"></script>
<script language="text/javascript">
	function sms()
	{
	alert("Your advice successfully submitted")
	}
</script>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">Connect GLobe</a></h1>
		</div>
	</div>
	<div id="menu1234">
		
		<br class="clearfix" />
	</div>
	<div id="page">
		<div id="content">
		
		   <div class="box" style="margin:10px;">
		        <form action="insert_advice.jsp" method="post">
				<table width="270" border="" cellpadding="1" cellspacing="1">
				<%
				String value = request.getParameter("roll");
				int roll = Integer.parseInt(value);
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/connectglobe", "root", "root");
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery("select * from postreport where post_id='"+ roll +"'");
				if (rs.next()) {
				%>
				<center>
				<tr bgcolor="#1C7575"><td><b><font color="white">State</font></b></td><td><input type="text" name="state" value="<%=rs.getString(1)%>" style="width:170px; height:35px;"></td></tr>
				<tr bgcolor="#1C7575"><td><b><font color="white">District</font></b></td><td><input type="text" name="district" value="<%=rs.getString(2)%>" style="width:170px; height:35px;"> </td></tr>
				<tr bgcolor="#1C7575"><td><b><font color="white">Taluka</font></b></td><td><input type="text" name="taluka" value="<%=rs.getString(3)%>" style="width:170px; height:35px;" > </td></tr>
				<tr bgcolor="#1C7575"><td><b><font color="white">Your Report</font></b></td><td><input type="text" name="report" value="<%=rs.getString(4)%>" style="width:170px; height:35px;"> </td></tr>
				<tr bgcolor="#1C7575"><td><b><font color="white">Your Status</font></b></td><td><input type="text" name="status" value="<%=rs.getString(5)%>" style="width:170px; height:35px;"> </td></tr>
				<tr bgcolor="#1C7575"><td><b><font color="white">Picture</font></b></td><td><input type="text" name="picture" value="<%=rs.getString(6)%>" style="width:170px; height:35px;"> </td></tr>
				<tr bgcolor="#1C7575"><td><b><font color="white">Post Id</font></b></td><td><input type="text" name="postid" value="<%=rs.getString(7)%>" style="width:170px; height:35px;"> </td></tr>
						
				<%}	
		%>
		</center>
		</table><br>
			<table>
			<tr><td><b>Advice:</b><textarea  name="advice" style="height:30px; width:260px" cols="80" rows="20"></textarea></td></tr>
			<tr></tr>
			<tr></tr>
			<tr><td><input type="submit" value="Submit" onblur="return sum()" style="height:30px;"></td></tr>
</table>


</form>
</div>
		</div>
		
			<br class="clearfix" />
	</div>
			<div id="page-bottom">
		<div id="page-bottom-content">
			<h3>Connect Globe</h3>
			<p>
					Now You can Share Your Social Problem such as some kind of
					Harassment,Bribe matters. Simply just Register Yourself and Do
					login After that click on Post Report Link as shown above. And
					After selecting Your subject and location YOu can post Your matter
					Simply.This will be visible to every visitors and our Supporters
					will try to proceed it further.	
			</p>
		</div>
		<div id="page-bottom-sidebar">
			<h3>Social Media</h3>
			<ul class="list">
				<li class="first"><a href="http://www.facebook.com">Facebook</a></li>
				<li><a href="http://www.twitter.com">Twitter</a></li>
				<li class="last"><a href="http://www.youtube.com">You Tube</a></li>
			</ul>
		</div>
		<br class="clearfix" />
	</div>
</div>

<div id="footer" style="color:red">
	Copyright (c) 2015 ConnectGlobe.com. All rights reserved. Design by Kishor Kadam.</body>
</html>


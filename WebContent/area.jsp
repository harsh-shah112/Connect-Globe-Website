<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Connect Globe</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#menu > ul').dropotron({
			mode : 'fade',
			globalOffsetY : 11,
			offsetY : -15
		});

	});
</script>
<style>
#username {
	background-color: #000000;
	color: #FFFFFF;
}

#password {
	background-color: #000000;
	color: #FFFFFF;
}

#register {
	color: red;
	text-decoration: blink;
}
</style>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div id="logo">
				<h1>
					<a href="#">Connect Globe</a>
				</h1>
			</div>
		</div>
		<%
		String s=(String)session.getAttribute("userid");
		if(s!=null)
		{
		%>
		<div id="menu">
			<ul>
				<li class="last" id="title"><a href="home1.jsp">About us</a></li>
				<li class="last" id="title"><a href="post.jsp">Post Report</a></li>
				<li class="last" id="title"><a href="GetPostDetails1.jsp">View Status</a></li>
				<li class="last" id="title"><a href="area.jsp">Your Area</a></li>
				<li class="last" id="title"><a href="advice.jsp">Your Advice</a></li>
				<li class="last" id="title"><a href="topic.jsp">Discuss</a></li>
				<li class="last" id="title"><a href="admin.jsp">Admin</a></li>
				<li class="last" id="title"><font color="white"><%=s %>,</font><a href="logout.jsp">Logout</a></li>
			</ul>
		</div><br>
		<div id="sidebar14">
					<div class="box">
						<form action="area.jsp">
							<tr>
								<th colspan="10" scope="col">
									
								</th>
							</tr>
		
	<%!
		PreparedStatement pst=null;
		Connection con=null;
		ResultSet rs=null;
	%>
	<center>
	<table>
		<tr>
		<td>State:</td><td><select name="state" id="state" style="height:25px; width:330px">
		<option>Select</option>
		<option>Maharashtra</option>
		</select></td></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>
		<td>District:</td><td><select name="district" id="district" style="height:25px; width:330px">
		<option>select</option>
												<option>Ahmednagar</option>
												<option>Pune</option>
												<option>Mumbai</option>
												<option>Solapur</option>
												<option>Aurangabad</option>
												<option>Bandara</option>
												<option>Nagpur</option>
												<option>Akola</option>
												<option>Chandrapur</option>
												<option>Jalgaon</option>
												<option>Parbhani</option>
												<option>Thane</option>
												<option>Latur</option>
												<option>Mumbai City</option>
												<option>Buldhana</option>
												<option>Dhule</option>
												<option>Kolhapur</option>
												<option>Nanded</option>
												<option>Raigad</option>
												<option>Amravati</option>
												<option>Nashik</option>
												<option>Wardha</option>
												<option>Beed</option>
												<option>Bandhra</option>
												<option>Gadchiroli</option>
												<option>Jalana</option>
												<option>Usmanabad</option>
												<option>Ratnagiri</option>
												<option>Sangali</option>
												<option>Satara</option>
												<option>Sindhudurga</option>
												<option>Yavatmal</option>
												<option>Nandurbar</option>
												<option>Washim</option>
												<option>Gondia</option>
												<option>Hingoli</option>
												
		</select></td></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>
		<td>Police Station:</td><td><select name="police_station" id="police_station" style="height:25px; width:330px">
		<option>Select</option>
												<option>Ahmednagar Police Station</option>
												<option>Pune Police Station</option>
												<option>Mumbai Police Station</option>
												<option>Solapur Police Station</option>
												<option>Aurangabad Police Station</option>
												<option>Bandara Police Station</option>
												<option>Nagpur Police Station</option>
												<option>Akola Police Station</option>
												<option>Chandrapur Police Station</option>
												<option>Jalgaon Police Station</option>
												<option>Parbhani Police Station</option>
												<option>Thane Police Station</option>
												<option>Latur Police Station</option>
												<option>Mumbai City Police Station</option>
												<option>Buldhana Police Station</option>
												<option>Dhule Police Station</option>
												<option>Kolhapur Police Station</option>
												<option>Nanded Police Station</option>
												<option>Raigad Police Station</option>
												<option>Amravati Police Station</option>
												<option>Nashik Police Station</option>
												<option>Wardha Police Station</option>
												<option>Beed Police Station</option>
												<option>Bandhra Police Station</option>
												<option>Gadchiroli Police Station</option>
												<option>Jalana Police Station</option>
												<option>Usmanabad Police Station</option>
												<option>Ratnagiri Police Station</option>
												<option>Sangali Police Station</option>
												<option>Satara Police Station</option>
												<option>Sindhudurga Police Station</option>
												<option>Yavatmal Police Station</option>
												<option>Nandurbar Police Station</option>
												<option>Washim Police Station</option>
												<option>Gondia Police Station</option>
												<option>Hingoli Police Station</option>
												
		</select></td></tr>
		</table>
		</center><br>
		<center><strong>View Area Report</strong></center><br>
		<center>
		<table border="1" width="300" cellpadding="1" cellspacing="1" align="center">
		<tr bgcolor="#1C7575">
		<td bgcolor="#1C7575"><font color="white"><b>State</b></font></td>
		<td bgcolor="#1C7575"><font color="white"><b>District</b></font></td>
		<td bgcolor="#1C7575"><font color="white"><b>Police Station</b></font></td>
		<td bgcolor="#1C7575"><font color="white"><b>Report</b> </font></td>
		<td bgcolor="#1C7575"><font color="white"><b>Status</b></font></td>
		<td bgcolor="#1C7575"><font color="white"><b>Picture</b></font></td>
		<td bgcolor="#1C7575"><font color="white"><b>Your Post Id</b></font></td>
		</tr>
		
		
<%
	String state=request.getParameter("state");
	String district=request.getParameter("district");
	String police_station=request.getParameter("police_station");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/connectglobe", "root", "root");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from postreport where state='"+state+"' and district='"+district+"' and taluka='"+police_station+"'");
	while(rs.next())
	{
	%>			
				
				
				<tr>
				<td><input type="text"  name="fname" value="<%=rs.getString(1)%>" style="height:35px; width:80px"> </td>
				<td><input type="text"  name="dob" value="<%=rs.getString(2)%>" style="height:35px; width:80px"> </td>
				<td><input type="text" name="cont" value="<%=rs.getString(3)%>" style="height:35px; width:80px"> </td>
				<td><input type="text" name="email" value="<%=rs.getString(4)%>" style="height:35px; width:80px"> </td>
				<td><input type="text" name="bgroup" value="<%=rs.getString(5)%>" style="height:35px; width:80px"> </td>
				<td><input type="text" name="name" value="<%=rs.getString(6)%>" style="height:35px; width:80px"> </td>
				<td><input type="text" name="relation" value="<%=rs.getInt(7)%>" style="height:35px; width:80px"> </td>
				</tr>		
				
	<% }%>
	</table>
</center>
	<br>
	<center><td><input type="submit" value="Search" ></td></center>
				</div>
			</div>
</form>
<br class="clearfix" />
		<div id="page-bottom">
			<div id="page-bottom-content">
				<h3>Connect Globe</h3>
				<p>Now You can Share Your Social Problem such as some kind of
					Harassment,Bribe matters. Simply just Register Yourself and Do
					login After that click on Post Report Link as shown above. And
					After selecting Your subject and location YOu can post Your matter
					Simply.This will be visible to every visitors and our Supporters
					will try to proceed it further.</p>
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
	<div id="footer" style="color: red">Copyright (c) 2015
		ConnectGlobe.com. All rights reserved. Design by Kishor Kadam.</div>
<%}
		else
		{
			response.sendRedirect("Home.jsp");
		}
%>
</body>
</html>
<%@taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>

<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/connectglobe" user="root"
	password="root" var="myds" scope="request" />

<sql:query
	sql="select first_name,last_name,email,uname,pass from members"
	var="result" scope="page" dataSource="${requestScope.myds}" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>JSP List PostReport Records</title>
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
<style type="text/css">
<!--
.style2 {
	color: #FFFFFF;
	font-weight: bold;
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
		<div id="menu3">
			<ul>
				<li class="last" id="title"><a href="report.jsp">Back</a></li>
			</ul>
		</div>
		<div id="page">
			<div id="content"></div>
			<div id="sidebar16">
				<div class="box">
					<div align="left">
						<table width="800" border="1"  align="left"
							cellpadding="1" cellspacing="1">
							<tr>
								<td bgcolor="33CCCC"><div align="center" class="style2">Name</div></td>
								<td bgcolor="33CCCC"><div align="center" class="style2">Last
										Name</div></td>
								<td bgcolor="33CCCC"><div align="center" class="style2">Email-Id</div></td>
								<td bgcolor="33CCCC"><div align="center" class="style2">User
										Name</div></td>
								<td bgcolor="33CCCC"><div align="center" class="style2">User
										Password</div></td>
								<td bgcolor="33CCCC"><div align="center" class="style2">Action</div></td>
							</tr>
							<c:forEach items="${pageScope.result.rows}" var="row">
								<tr>
									<td><center><c:out value="${row.first_name}" /></center></td>
									<td><center><c:out value="${row.last_name}" /></center></td>
									<td><center><c:out value="${row.email}" /></center></td>
									<td><center><c:out value="${row.uname}" /></center></td>
									<td><center><c:out value="${row.pass}" /></center></td>
									<td><center><a href="RemoveUserReport.jsp?first_name=<c:out value="${row.first_name}"/>">
											Delete</a></center></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
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
		ConnectGlobe.com. All rights reserved.Design by Kishor Kadam.</div>
</body>
</html>

<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
Connection cn=null;
int sr=0;
java.sql.Date date=new java.sql.Date(new java.util.Date().getTime());
String name=request.getParameter("pname");
out.println(name);
Double length=Double.parseDouble(request.getParameter("length"));
Double width=Double.parseDouble(request.getParameter("width"));
Double height=Double.parseDouble(request.getParameter("height"));
int quntity=Integer.parseInt(request.getParameter("quantity"));
%>
<%
Class.forName("com.mysql.jdbc.Driver");
cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/furniture","root","root");
System.out.println("Connection Established");
PreparedStatement pst=cn.prepareStatement("insert into customize values(?,?,?,?,?,?,?)");
pst.setInt(1,sr);
pst.setDate(2,date);
pst.setString(3,name);
pst.setDouble(4,length);
pst.setDouble(5,width);
pst.setDouble(6,height);
pst.setInt(7,quntity);
pst.executeUpdate();
out.println("aaa");
%>
</body>
</html>
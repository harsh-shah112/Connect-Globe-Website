<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%!
		PreparedStatement pst=null;
		Connection con1=null;
		ResultSet rs1=null;
		%>
		<%
		String postid=request.getParameter("postid");
		int v = Integer.parseInt(postid);
		String advice=request.getParameter("advice");
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/connectglobe", "root", "root");
		pst=con1.prepareStatement("insert into advice values('"+v+"','"+advice+"')");
		pst.executeUpdate();
		out.print("Advice Successfully Inserted");
		%>
		<a href="advice.jsp">Back</a>
		
		
		
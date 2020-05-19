<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%!Connection con;
	PreparedStatement ps;

	public void jspInit() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Loaded");
			String url = "jdbc:mysql://localhost:3306/connectglobe";
			Connection con = DriverManager.getConnection(url, "root", "root");
			System.out.println("Connection Established");
			ps = con.prepareStatement("INSERT INTO topic VALUES(?,?,?,?)");
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		} catch (SQLException e) {
			System.out.println(e);
		}

	}

	public void jspDestroy() {
		try {
			ps.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
	}%>
	<%
		String s = request.getParameter("tname");
		String d = request.getParameter("email");
		String t = request.getParameter("discuss");
		String u = request.getParameter("date");

		ps.setString(1, s);
		ps.setString(2, d);
		ps.setString(3, t);
		ps.setString(4, u);

		ps.executeUpdate();
	%>
	<%@ include file="topic.jsp"%>
</body>
</html>
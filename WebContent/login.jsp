	
<%@ page import="java.sql.*"%>
<%
	try
	{
	String userid = request.getParameter("uname");
	String pwd = request.getParameter("pass");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/connectglobe", "root", "root");
	PreparedStatement pst=con.prepareStatement("select * from members where uname=? and pass=?");
	pst.setString(1,userid);
	pst.setString(2,pwd);
	ResultSet rs=pst.executeQuery();
	
	if (rs.next()) {
		String x=rs.getString(2);
		session.setAttribute("userid", x+"");
		response.sendRedirect("home1.jsp");
	} else {
		out.println("Invalid password <a href='Home.jsp'>try again</a>");
	}
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>
<%@ page import="java.sql.*"%>
<%
	try
	{
		String state = request.getParameter("state");
		String district = request.getParameter("district");
		String taluka = request.getParameter("taluka");
		String report = request.getParameter("report");
		String radio = request.getParameter("radio");
		String file = request.getParameter("file");
		int x=0;
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/connectglobe", "root", "root");
	Statement st = con.createStatement();
	int i = st.executeUpdate("insert  into postreport values('"+state+ "','"+district+"','"+taluka+"','"+report+ "','"+radio+"','"+file+"','"+x+"')");
	
	if (i>0)
	{
		response.sendRedirect("post.jsp");
	} 
	else 
	{
		response.sendRedirect("post.jsp");
	}
	}
		
	catch(Exception e)
	{
	out.print(e);
	}
	
%>
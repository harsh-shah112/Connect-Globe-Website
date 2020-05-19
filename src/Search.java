import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Search extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String rollno = request.getParameter("roll");
		int roll = Integer.valueOf(rollno);

		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Loaded");
			String url = "jdbc:mysql://localhost:3306/connectglobe";
			Connection con = DriverManager.getConnection(url, "root", "root");
			System.out.println("Connection Established");
			PreparedStatement ps = con
					.prepareStatement("select * from postreport where post_id=?");
			ps.setInt(1, roll);

			out.print("<table width=50% border=1>");

			ResultSet rs = ps.executeQuery();

			/* Printing column names */
			ResultSetMetaData rsmd = rs.getMetaData();
			int total = rsmd.getColumnCount();
			out.print("<tr>");
			for (int i = 1; i <= total; i++) {
				out.print("<th>" + rsmd.getColumnName(i) + "</th>");
			}

			out.print("</tr>");

			/* Printing result */

			while (rs.next()) {
				out.print("<tr bgcolor='red'><td >" + rs.getString(1) + "</td><td>"
						+ rs.getString(2) + "</td><td>" + rs.getString(3)
						+ "</td><td>" + rs.getString(4) + "</td><td>"
						+ rs.getString(5) + "</td><td>" + rs.getString(6)
						+ "</td><td>" + rs.getInt(7) + "</td></tr>");

			}

			out.print("</table>");

			out.println("<html><body>");
			out.println("<h2>Advice:-</h2><textarea name='advice' rows='10' cols='40'>");
			out.println("</textarea>");
			out.println("<br><br>");
			out.println("<input type='submit' value='submit'>");
			out.println("</body></html>");

		} catch (Exception e2) {
			e2.printStackTrace();
		}

		finally {
			out.close();
		}
	}
}

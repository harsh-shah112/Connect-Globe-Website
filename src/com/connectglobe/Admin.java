package com.connectglobe;

import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Admin {

	public static boolean validate(AdminBean bean) {
		boolean status = false;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con
					.prepareStatement("select * from admin where uname=? and upass=?");
			ps.setString(1, bean.getUsername());
			ps.setString(2, bean.getUserpass());
			ResultSet rs = ps.executeQuery();
			status = rs.next();

		} catch (Exception e) {
		}

		return status;
	}
}

package com.connectglobe;

import com.connectglobe.User;
import java.sql.*;

public class RegisterDao {
	public static int register(User u) {
		int status = 0;
		ResultSet rs = null;
		Statement st = null;
		try {
			Connection con = ConnectionProvider.getCon();
			st = con.createStatement();
			// rs=st.executeQuery("select max(user_id) from loginregistration");
			// System.out.println(rs);
			if (u.getUname() != "" && u.getUpass() != "" && u.getUemail() != ""
					&& u.getUmobile() != "" && u.getUaddress() != "") {
				PreparedStatement ps = con
						.prepareStatement("insert into loginregistration values(?,?,?,?,?)");

				ps.setString(1, u.getUname());
				ps.setString(2, u.getUpass());
				ps.setString(3, u.getUemail());
				ps.setString(4, u.getUmobile());
				ps.setString(5, u.getUaddress());
				// ps.setString(6,u.getUid());
				status = ps.executeUpdate();
			} else {
				System.out.println("All records fill neccessary");
			}
		} catch (Exception e) {

		}
		return status;
	}

}
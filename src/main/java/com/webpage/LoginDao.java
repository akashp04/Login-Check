package com.webpage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	public boolean check(String uname, String pwd) {
		
		
		String sql = "SELECT * FROM user WHERE Username=? and Password=?";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails", "root", "MySQLPwd123");
			if (con != null)
				System.out.println("Connected Successfully");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pwd);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				return true;
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
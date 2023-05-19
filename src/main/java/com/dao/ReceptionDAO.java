package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.entity.Doctor;
import com.entity.Reception;

public class ReceptionDAO {
	
	public int addReceptionVerify(Reception r) {
		
		int f=0;
		
		
		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			String q1 = "INSERT INTO RECEPTIONVERIFICATION(RNAME,RPASSWORD,RPHONE,REMAIL) VALUES(?,?,?,?)";

			PreparedStatement pstmt = con.prepareStatement(q1);
			
			
			pstmt.setString(1, r.getRname());
			pstmt.setString(2, r.getRpassword());
			pstmt.setString(3, r.getRphone());
			pstmt.setString(4, r.getRemail());
			
			
			int res = pstmt.executeUpdate();

			if (res > 0) {

//				response.sendRedirect("dashboard.jsp");
				f = 1;
			}

			else {

				f = 0;
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;


	}

}

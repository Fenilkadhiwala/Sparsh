package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.entity.Doctor;

public class DoctorDAO {
	
	public int addDoctorVerify(Doctor d) {
		int f=0;
		
		
		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			String q1 = "INSERT INTO DOCTORVERIFICATION(DNAME,DPASSWORD,DPHONE,DEMAIL) VALUES(?,?,?,?)";

			PreparedStatement pstmt = con.prepareStatement(q1);
			
			
			pstmt.setString(1, d.getDname());
			pstmt.setString(2, d.getDpassword());
			pstmt.setString(3, d.getDphone());
			pstmt.setString(4, d.getDemail());
			
			
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

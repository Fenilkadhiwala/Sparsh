package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Appointment;
import com.entity.Patient;
import com.entity.Reception;

public class AppointmentDAO {

public int bookAppointment(Appointment a) {
		
		int f=0;
		
		
		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			String q1 = "INSERT INTO APPOINTMENT(ANAME,AEMAIL,APHONE,ATYPE,ADATE,ATIME,ATEXT) VALUES(?,?,?,?,?,?,?)";

			PreparedStatement pstmt = con.prepareStatement(q1);
			
			
			pstmt.setString(1, a.getAname());
			pstmt.setString(2, a.getAemail());
			pstmt.setString(3, a.getAphone());
			pstmt.setString(4, a.getAtype());
			pstmt.setString(5, a.getAdate());
			pstmt.setString(6, a.getAtime());
			pstmt.setString(7, a.getAtext());
			
			
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

public List<Appointment> display() throws SQLException {
	List<Appointment> li = new ArrayList<Appointment>();

	Appointment a;
	String q2 = "SELECT * FROM APPOINTMENT ORDER BY AID";

	String uname = "root";
	String psw = "F@2901#263";
	String url = "jdbc:mysql://localhost:3306/project";

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, uname, psw);

		PreparedStatement stmt = con.prepareStatement(q2);
		
		ResultSet rs = stmt.executeQuery();

		while (rs.next()) {
			a = new Appointment();
			
			a.setAid(rs.getInt(1));
			a.setAname(rs.getString(2));
			a.setAemail(rs.getString(3));
			a.setAphone(rs.getString(4));
			a.setAtype(rs.getString(5));
			a.setAdate(rs.getString(6));
			a.setAtime(rs.getString(7));
			a.setAtext(rs.getString(8));

			li.add(a);
		}

	}

	catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return li;
}


}



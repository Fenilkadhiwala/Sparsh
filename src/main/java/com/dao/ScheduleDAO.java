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
import com.entity.Schedule;

public class ScheduleDAO {
public int addSchedule(Schedule s) {
		
		int f=0;
		
		
		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			String q1 = "INSERT INTO SCHEDULE(STYPE,SDATE,STIME,STEXT) VALUES(?,?,?,?)";

			PreparedStatement pstmt = con.prepareStatement(q1);
			
			
			pstmt.setString(1, s.getStype());
			pstmt.setString(2, s.getSdate());
			pstmt.setString(3, s.getStime());
			pstmt.setString(4, s.getStext());
			
			
			
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



public int deleteSchedule(int sid) {
	int f=0;
	
	
	String uname = "root";
	String psw = "F@2901#263";
	String url = "jdbc:mysql://localhost:3306/project";

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, uname, psw);

		String q1 = "DELETE FROM SCHEDULE WHERE SID=?";

		PreparedStatement pstmt = con.prepareStatement(q1);
		
		
		
		pstmt.setInt(1, sid);
		
		
		int res = pstmt.executeUpdate();

		if (res > 0) {

//			response.sendRedirect("dashboard.jsp");
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



public List<Schedule> display() throws SQLException {
	List<Schedule> li = new ArrayList<Schedule>();

	Schedule s;
	String q2 = "SELECT * FROM SCHEDULE ORDER BY SID";

	String uname = "root";
	String psw = "F@2901#263";
	String url = "jdbc:mysql://localhost:3306/project";

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, uname, psw);

		PreparedStatement stmt = con.prepareStatement(q2);
		

		ResultSet rs = stmt.executeQuery();

		while (rs.next()) {
			s = new Schedule();
			s.setSid(rs.getInt(1));
			s.setStype(rs.getString(2));
			s.setSdate(rs.getString(3));
			s.setStime(rs.getString(4));
			s.setStext(rs.getString(5));
			
			

			li.add(s);
		}

	}

	catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return li;
}



}

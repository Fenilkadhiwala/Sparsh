package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Doctor;
import com.entity.Patient;
import com.entity.Reception;



public class PatientDAO {
	
	public int addPatient(Patient p) {
		int f=0;
		
		
		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			String q1 = "INSERT INTO PATIENT(PFNAME,PLNAME,PEMAIL,PPHONE,PDATE,RID) VALUES(?,?,?,?,?,?)";

			PreparedStatement pstmt = con.prepareStatement(q1);
			
			
			pstmt.setString(1, p.getPfname());
			pstmt.setString(2, p.getPlname());
			pstmt.setString(3, p.getPemail());
			pstmt.setString(4, p.getPphone());
			pstmt.setString(5, p.getPdate());
			pstmt.setInt(6, p.getRid());
			
			
			
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
	
	public int updatePatient(Patient p) {
		int f=0;
		
		
		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			String q1 = "UPDATE PATIENT SET PFNAME=?,PLNAME=?,PEMAIL=?,PPHONE=? WHERE PID=?";

			PreparedStatement pstmt = con.prepareStatement(q1);
			
			
			pstmt.setString(1, p.getPfname());
			pstmt.setString(2, p.getPlname());
			pstmt.setString(3, p.getPemail());
			pstmt.setString(4, p.getPphone());
			pstmt.setInt(5, p.getPid());
			
			
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
	
	

	public int deletePatient(int pid) {
		int f=0;
		
		
		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			String q1 = "DELETE FROM PATIENT WHERE PID=?";

			PreparedStatement pstmt = con.prepareStatement(q1);
			
			
			
			pstmt.setInt(1, pid);
			
			
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
	
	

	
	
	public List<Patient> display() throws SQLException {
		List<Patient> li = new ArrayList<Patient>();

		Patient p;
		String q2 = "SELECT * FROM PATIENT WHERE RID=?";

		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			PreparedStatement stmt = con.prepareStatement(q2);
			Reception myobj=new Reception();
			
			int rid=myobj.getRid();
			stmt.setInt(1, rid);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				p = new Patient();
				p.setPid(rs.getInt(1));
				p.setPfname(rs.getString(2));
				p.setPlname(rs.getString(3));
				p.setPemail(rs.getString(4));
				p.setPphone(rs.getString(5));
				p.setPdate(rs.getString(6));

				li.add(p);
			}

		}

		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return li;
	}
	
	public Patient getById(int id) throws SQLException {
//		List<Student> li = new ArrayList<Student>();

		Patient p = null;
		String q2 = "SELECT * FROM PATIENT WHERE PID=?";

		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			PreparedStatement stmt = con.prepareStatement(q2);
			stmt.setInt(1, id);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				p=new Patient();
				
				p.setPid(rs.getInt(1));
				p.setPfname(rs.getString(2));
				p.setPlname(rs.getString(3));
				p.setPemail(rs.getString(4));
				p.setPphone(rs.getString(5));
				
				
			}

		}

		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return p;
	}




}

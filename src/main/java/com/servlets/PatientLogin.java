package com.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Doctor;
import com.entity.PatientCust;


public class PatientLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";
		String pname=request.getParameter("pname");
		String ppassword=request.getParameter("ppassword");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			String q1 = "SELECT PID FROM PATIENTVERIFICATION WHERE PNAME=? AND PPASSWORD=?";

			PreparedStatement pstmt = con.prepareStatement(q1);
			
			
			pstmt.setString(1, pname);
			pstmt.setString(2, ppassword);
			
			
			
			
			ResultSet rs=pstmt.executeQuery();

			if (rs.next()) {

				int patientid=rs.getInt(1);
				PatientCust obj=new PatientCust(patientid);
//				obj.setPid(doctorid);
				HttpSession sess=request.getSession();
				sess.setAttribute("msg", "Welcome User");
				sess.setAttribute("doctorid",patientid);
				
				
				sess.setAttribute("patientname", pname);
				HttpSession session = request.getSession();
				session.setAttribute("isLoggedIn", true);
				response.sendRedirect("patientdashboard.jsp");
			}

			else {
				
				HttpSession session = request.getSession();
			    long timestamp = System.currentTimeMillis();
			    session.setAttribute("errorMessage", "Invalid username or password!");
			    session.setAttribute("errorTimestamp", timestamp);
			    RequestDispatcher dispatcher = request.getRequestDispatcher("patient.jsp");
			    dispatcher.forward(request, response);
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		


		
	}

}

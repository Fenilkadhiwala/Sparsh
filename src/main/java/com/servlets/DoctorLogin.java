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


public class DoctorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";
		String dname=request.getParameter("dname");
		String dpassword=request.getParameter("dpassword");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			String q1 = "SELECT DID FROM DOCTORVERIFICATION WHERE DNAME=? AND DPASSWORD=?";

			PreparedStatement pstmt = con.prepareStatement(q1);
			
			
			pstmt.setString(1, dname);
			pstmt.setString(2, dpassword);
			
			
			
			
			ResultSet rs=pstmt.executeQuery();

			if (rs.next()) {

				int doctorid=rs.getInt(1);
				Doctor obj=new Doctor();
				obj.setDid(doctorid);
				HttpSession sess=request.getSession();
				sess.setAttribute("msg", "Welcome Doctor");
				sess.setAttribute("doctorid",doctorid);
				String[] parts=dname.split(" ");
				
				sess.setAttribute("doctorname", parts[1]);
				HttpSession session = request.getSession();
				session.setAttribute("isLoggedIn", true);
				response.sendRedirect("dashboard.jsp");
			}

			else {
				
				HttpSession session = request.getSession();
			    long timestamp = System.currentTimeMillis();
			    session.setAttribute("errorMessage", "Invalid username or password!");
			    session.setAttribute("errorTimestamp", timestamp);
			    RequestDispatcher dispatcher = request.getRequestDispatcher("doctor.jsp");
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

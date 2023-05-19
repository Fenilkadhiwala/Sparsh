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
import com.entity.Patient;
import com.entity.Reception;


public class ReceptionLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = "root";
		String psw = "F@2901#263";
		String url = "jdbc:mysql://localhost:3306/project";
		String rname=request.getParameter("rname");
		String rpassword=request.getParameter("rpassword");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, psw);

			String q1 = "SELECT RID FROM RECEPTIONVERIFICATION WHERE RNAME=? AND RPASSWORD=?";

			PreparedStatement pstmt = con.prepareStatement(q1);
			
			
			pstmt.setString(1, rname);
			pstmt.setString(2, rpassword);
			
			
			
			
			ResultSet rs=pstmt.executeQuery();

			if (rs.next()) {

				int receptionid=rs.getInt(1);
				Reception obj=new Reception(receptionid);
				String rid=String.valueOf(receptionid);
//				obj.setRid(receptionid);
				HttpSession sess=request.getSession();
				sess.setAttribute("msg", "Welcome Receptionist");
				sess.setAttribute("rid", rid);
				Reception mo1=new Reception(receptionid);
				Patient mo2=new Patient(receptionid);
//				sess.setAttribute("receptionid",receptionid);
				String[] parts=rname.split(" ");
				
				sess.setAttribute("receptionname", parts[1]);
				HttpSession session = request.getSession();
				session.setAttribute("isLoggedIn", true);
				response.sendRedirect("receptiondashboard.jsp");
			}

			else {
				
				HttpSession session = request.getSession();
			    long timestamp = System.currentTimeMillis();
			    session.setAttribute("errorMessage", "Invalid username or password!");
			    session.setAttribute("errorTimestamp", timestamp);
			    RequestDispatcher dispatcher = request.getRequestDispatcher("reception.jsp");
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

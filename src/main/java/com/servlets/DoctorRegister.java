package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDAO;
import com.entity.Doctor;

public class DoctorRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String dname=request.getParameter("dname");
		String dpassword=request.getParameter("dpassword");
		String dphone=request.getParameter("dphone");
		String demail=request.getParameter("demail");
		
		Doctor d=new Doctor(dname,dpassword,dphone,demail);
		DoctorDAO obj=new DoctorDAO();
		
		int f=obj.addDoctorVerify(d);
		
		if(f==1)
		{
			HttpSession sess = request.getSession();
			sess.setAttribute("msg", "You've Successfully Registerd Yourself!!");
			response.sendRedirect("doctor.jsp");
		}
		
		else
		{
			response.sendRedirect("home.jsp");
		}
		
		
	}

}

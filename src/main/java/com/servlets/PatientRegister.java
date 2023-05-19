package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDAO;
import com.dao.PatientCustDAO;
import com.entity.Doctor;
import com.entity.PatientCust;

public class PatientRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pname=request.getParameter("pname");
		String ppassword=request.getParameter("ppassword");
		String pphone=request.getParameter("pphone");
		String pemail=request.getParameter("pemail");
		
		PatientCust pc=new PatientCust(pname,ppassword,pphone,pemail);
		
		PatientCustDAO obj = new PatientCustDAO();
		
		int f=obj.addPatientVerify(pc);
		
		if(f==1)
		{
			HttpSession sess = request.getSession();
			sess.setAttribute("msg", "You've Successfully Registerd Yourself!!");
			response.sendRedirect("patient.jsp");
		}
		
		else
		{
			response.sendRedirect("home.jsp");
		}
		
		
	}

}

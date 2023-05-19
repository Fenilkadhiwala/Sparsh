package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.PatientDAO;
import com.entity.Doctor;
import com.entity.Patient;
import com.entity.Reception;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class AddPatient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pfname = request.getParameter("pfname");
		String plname = request.getParameter("plname");
		String pemail = request.getParameter("pemail");
		String pphone = request.getParameter("pphone");
		String pdate = request.getParameter("pdate");
		Reception myobj=new Reception();
		
//		int rid=myobj.getRid();
		
		
				
		Patient p = new Patient(pfname, plname, pemail, pphone,pdate);
//		Patient p1=new Patient(rid);

		PatientDAO obj = new PatientDAO();

		int f = obj.addPatient(p);

		if (f == 1) {
			HttpSession sess = request.getSession();
			sess.setAttribute("msg", "Patient Added Successfully!!");
			
//			sess.setAttribute("dt", formattedDate);
			response.sendRedirect("receptiondashboard.jsp");
		}

		else {
			response.sendRedirect("home.jsp");
		}

	}

}

package com.servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.PatientDAO;
import com.entity.Patient;


public class UpdatePatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String pfname = request.getParameter("pfname");
		String plname = request.getParameter("plname");
		String pemail = request.getParameter("pemail");
		String pphone = request.getParameter("pphone");
		
		int pid = Integer.parseInt(request.getParameter("pid"));
		
		
		Patient p = new Patient(pid,pfname, plname, pemail, pphone);
//		p.setPid(pid);

		PatientDAO obj = new PatientDAO();

		int f = obj.updatePatient(p);

		if (f == 1) {
			HttpSession sess = request.getSession();
			sess.setAttribute("msg", "Patient Updated Successfully!!");
//			LocalDate today = LocalDate.now();

			// Create a formatter to format the date as "Saturday, May 13, 2023"
//			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy");

			// Format the date using the formatter
//			String formattedDate = today.format(formatter);
//			sess.setAttribute("dt", formattedDate);
			response.sendRedirect("receptiondashboard.jsp");
		}

		else {
			response.sendRedirect("home.jsp");
		}

	}

}

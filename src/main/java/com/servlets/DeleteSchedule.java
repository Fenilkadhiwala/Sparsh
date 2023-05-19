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
import com.dao.ScheduleDAO;
import com.entity.Patient;


public class DeleteSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		int sid = Integer.parseInt(request.getParameter("sid"));
		
		

		ScheduleDAO obj = new ScheduleDAO();

		int f = obj.deleteSchedule(sid);

		if (f == 1) {
			HttpSession sess = request.getSession();
			sess.setAttribute("msg", "Schedule Removed Successfully!!");
			response.sendRedirect("dashboard.jsp");
		}

		else {
			response.sendRedirect("home.jsp");
		}

	}

}

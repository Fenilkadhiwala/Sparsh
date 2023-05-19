package com.servlets;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDAO;
import com.dao.ScheduleDAO;
import com.entity.Appointment;
import com.entity.Schedule;


//@WebServlet("/BookAppointment")
public class AddSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String stype=request.getParameter("stype");
		String sdate=request.getParameter("sdate");
		String stime=request.getParameter("stime");
		String stext=request.getParameter("stext");
		
		Schedule obj=new Schedule(stype,sdate,stime,stext);
		
		ScheduleDAO obj1=new ScheduleDAO();
		
		int f=obj1.addSchedule(obj);
		
		if(f==1)
		{
			HttpSession sess = request.getSession();
			sess.setAttribute("msg", "Your Schedule Has Been Set Successfully!!");
			response.sendRedirect("dashboard.jsp");
		}
		
		
	    
	    
		
	}

}

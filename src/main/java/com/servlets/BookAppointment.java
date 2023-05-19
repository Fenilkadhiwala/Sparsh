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
import com.entity.Appointment;


//@WebServlet("/BookAppointment")
public class BookAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String aname=request.getParameter("aname");
		String aemail=request.getParameter("aemail");
		String aphone=request.getParameter("aphone");
		String atype=request.getParameter("atype");
		String adate=request.getParameter("adate");
		String atime=request.getParameter("atime");
		String atext=request.getParameter("atext");
		
		Appointment obj=new Appointment(aname,aemail,aphone,atype,adate,atime,atext);
		
		AppointmentDAO obj1=new AppointmentDAO();
		
		int f=obj1.bookAppointment(obj);
		
		if(f==1)
		{
			HttpSession sess = request.getSession();
			sess.setAttribute("msg", "Your Appointment Has Been Booked Successfully!!");
			response.sendRedirect("patientdashboard.jsp");
		}
		
		
	    
	    
		
	}

}

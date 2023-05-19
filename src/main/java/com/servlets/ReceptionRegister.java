package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDAO;
import com.dao.ReceptionDAO;
import com.entity.Doctor;
import com.entity.Reception;

public class ReceptionRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rname=request.getParameter("rname");
		String rpassword=request.getParameter("rpassword");
		String rphone=request.getParameter("rphone");
		String remail=request.getParameter("remail");
		
		Reception r=new Reception(rname,rpassword,rphone,remail);
		
		ReceptionDAO obj=new ReceptionDAO();
		
		int f=obj.addReceptionVerify(r);
		
		if(f==1)
		{
			HttpSession sess = request.getSession();
			sess.setAttribute("msg", "You've Successfully Registerd Yourself!!");
			response.sendRedirect("reception.jsp");
		}
		
		else
		{
			response.sendRedirect("home.jsp");
		}
		
		
	}

}

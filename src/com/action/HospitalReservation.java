package com.action;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.sql.Date;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.ReservationBean;
import com.bean.UserBean;
import com.dao.UserDAO;

/**
 * Servlet implementation class HospitalReservation
 */
@WebServlet("/HospitalReservation")
/**
 * Servlet implementation class HotelReservationContoller
 */
public class HospitalReservation extends HttpServlet {

public void doGet(HttpServletRequest request, HttpServletResponse response) 
			           throws ServletException, java.io.IOException {

try
{	    
     ReservationBean res = new ReservationBean();
     res.setDoctorName(request.getParameter("doctor"));
     res.setPatientName(request.getParameter("patient"));
     res.setAppointmentDate((java.sql.Date(request.getParameter("appointmentDate")));

     user = UserDAO.login(user);
	   		    
     if (user.isValid())
     {
	        
          HttpSession session = request.getSession(true);	    
          session.setAttribute("currentSessionUser",user); 
          response.sendRedirect("userLogged.jsp"); //logged-in page      		
     }
	        
     else 
          response.sendRedirect("invalidLogin.jsp"); //error page 
} 
		
		
catch (Throwable theException) 	    
{
     System.out.println(theException); 
}
}
	

}
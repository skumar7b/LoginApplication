<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.ReservationBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h3>Reservation Cart</h3>
</center>
<form action="HotelReservationServlet" >
<table border="1" align="center">
	<thead bgcolor="#FDE6B5">
		<font color="white">
		<tr>
			<td>Hotel Name</td>
			<td>Reserved By</td>
			<td>Arrival Date</td>
			<td>Number of rooms</td>
			<td>Room Type</td>
			<td>Number of Nights</td>
			<td></td>
		</tr>
		</font>
	</thead>
	<%
	  ReservationBean rb;
		HttpSession newSession=request.getSession(false);
		ArrayList<ReservationBean> rbList = (ArrayList<ReservationBean>)session.getAttribute("ReservationCart");
		Iterator<ReservationBean> ReservationBeanIterator = rbList.iterator();
		
		int i=0;
		while (ReservationBeanIterator.hasNext())
		{
		
			//ReservationBean rbs=ReservationBeanIterator.next();
			 rb = (ReservationBean) ReservationBeanIterator.next();
			
			  %>
		<tr>	
			<td><%= rb.getHospitalName()%></td>
			<td><%= rb.getPatientName()%></td>
			<td><%= rb.getDateToString(rb.getArrivalDate())%></td>
			<td><%= rb.getRoomNumber()%></td>
			<td><%= rb.getRoomType()%></td>
			<td><input type="hidden" value="<%= i%>" name="deleteValue"/><input type="submit" value="delete" name="button"></td> 
			</tr>
	<%
		i++;
		}
	%>
<tr><td><input type="submit" value="Submit All" name="button"/>
	<input type="submit" value="Delete All" name="button"/></td></tr>
</table>
</form>
</body>
</html>
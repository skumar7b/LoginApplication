<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
     <head>
         <meta http-equiv="Content-Type" 
            content="text/html; charset=windows-1256">
         <title>   User Logged Successfully   </title>
      </head>
	
      <body>

         <center>
           <%
           	UserBean currentUser = (UserBean) session.getAttribute("currentSessionUser");
           %>
			
           Welcome <%= currentUser.getFirstName() + " " + currentUser.getLastName() %>
         </center>

      </body>

</html>
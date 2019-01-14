<%-- 
    Document   : register
    Created on : 18 Feb, 2018, 11:27:28 PM
    Author     : Abhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <%@page import="java.sql.*;"  %>
   
    <jsp:useBean id="c1" scope="page" class="sql.connect" /> 

 <%
 
           int n;
            String uname= request.getParameter("uname");
            String pass= request.getParameter("pass");
            String email= request.getParameter("email");
            String qry="insert into login values('"+uname+"','"+pass+"','"+email+"','user');";
            n=c1.update(qry);
            if(n>0)
            { 
             response.sendRedirect("login.jsp");
            }
            else
            {%><h2>User details exist</h2>
            <h3><a href="login.jsp">Go Back to Login</a></h3>
             <%}%>
             
        
</html>
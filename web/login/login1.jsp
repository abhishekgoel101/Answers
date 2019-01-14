

<%-- 
    Document   : login1
    Created on : 18 Feb, 2018, 11:27:47 PM
    Author     : Abhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <%@page import="java.sql.*;"  %>
   
    <jsp:useBean id="c1" scope="page" class="sql.connect" /> 

 <%
 
           ResultSet rs;
            String uname= request.getParameter("uname");
            String pass= request.getParameter("pass");
       
            String qry="select * from login where uname='"+uname+"' and pass='"+pass+"';";
            rs=c1.execute(qry);
            if(rs.next())
            { String type=rs.getString("type");
              %>
            
           <%session.setAttribute("uname",uname);
           session.setAttribute("type",type);
           response.sendRedirect("../home.jsp");
           //  ../ to go back one folder. / to go to root folder
           //  ../../ go back 2 folders
          
           }
            else
            { session.setAttribute("lerror","true");
           response.sendRedirect("login.jsp");
           }
             %>
            
        
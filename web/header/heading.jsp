<!DOCTYPE html>
<html lang="en">
<head>
    <% 
       String h="/IP_Programming_Discussion_Platform/header/";
   %>
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<%=h%>heading.css">
    <link rel="stylesheet" type="text/css" href="<%=h%>nav.css">
    
   <%@page import="java.sql.*;"  %>
    <jsp:useBean id="c1" scope="page" class="sql.connect" /> 
       <%@ include file="/modal/modal.jsp" %>
</head>

<%
    boolean log=false;
    String user="Guest";
    if(session.getAttribute("uname")!=null)
    {  
    log=true;
   
    user=(String)session.getAttribute("uname");
   }

    %>

<body>

<div class="head">

    <a href="<%=h%>../home.jsp"><img class="logo" src="<%=h%>logo.jpg" ></a>
<div style="padding-top:15px;padding-right:10px;">
<ul class="nav navbar-nav navbar-right">
 <% 
   if(log==false)
   {
   %>
 <li ><a href="<%=h%>../login/login.jsp" class="la"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
 <li><a href="<%=h%>../login/login.jsp" class="la"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
 <%  
   }
else
{
%>
 <li><a href="<%=h%>../login/logout.jsp" class="la"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
 <%
   }
  %>

 
</ul>
<p class="lname">Welcome <%=user%></p>
</div>
</div>


</body>
</html>

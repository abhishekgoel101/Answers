    
  <%@page import="java.sql.*;"  %>
    <jsp:useBean id="c1" scope="page" class="sql.connect" /> 
    <%
           int n;
            String uname=(String)session.getAttribute("uname");
            String qid=(String)(request.getParameter("qid"));
            String desc= (String)request.getParameter("description");
       
            String qry="insert into ans ( qid,uname,description,approved,date) values("+qid+",'"+uname+"','"+desc+"','No','2018-04-15');";
            n=c1.update(qry);
      
            response.sendRedirect("answer.jsp?qid="+qid+"");

           
        %>
   
    
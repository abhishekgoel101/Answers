    
  <%@page import="java.sql.*;"  %>
    <jsp:useBean id="c1" scope="page" class="sql.connect" /> 
    <%
           int n;
           ResultSet rs;
            String uname=(String)session.getAttribute("uname");
            String title= (String)request.getParameter("title");
            String topic= (String)request.getParameter("topic");
            String desc= (String)request.getParameter("description");
            String qid;
            String qry="insert into ques (title,topic,description,uname,date) values('"+title+"','"+topic+"','"+desc+"','"+uname+"','2018-04-20');";
            String qry1="select * from ques order by qid desc LIMIT 1;";
            n=c1.update(qry);
            rs=c1.execute(qry1);
           rs.next();
            qid=rs.getString("qid");
            response.sendRedirect("../answer/answer.jsp?qid="+qid+"");

        %>
    
    
    
    
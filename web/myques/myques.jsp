
 <!DOCTYPE html>

 <html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="https://fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet">
 
  <link rel="stylesheet" type="text/css" href="tab.css">
  <link rel="stylesheet" type="text/css" href="questable.css">
</head>

<body style="margin:0px;background-color:white;">
        <%@ include file="/header/heading.jsp" %>
        <%@ include file="/header/nav.jsp" %>
        <%@ include file="/sidebar/sidebar.jsp" %>
        
    <jsp:useBean id="c2" scope="page" class="sql.connect" /> 
    
<div class="container" style="max-width: 800px;margin-left:85px;float: left;padding:0px;">

    <h1 style="padding: 0px;">My Questions</h1>
    <% 
        String unamee=(String)session.getAttribute("uname");
    ResultSet rs,rs1;
    String qry="select * from ques where uname='"+unamee+"' order by date desc;";
    rs=c1.execute(qry);
    String qry1;
    %>
      
      <table class="qtable" >
         <% while(rs.next()){
         String qid=rs.getString("qid");
         qry1="select count(aid) from ans where qid="+qid+"";
         rs1=c2.execute(qry1);
         %>
          <tr>
              <td>
                  <span class="tans">
                      <span class="tano"><% if(rs1.next()){%><%=rs1.getString("count(aid)")%><%}else{%>0<%}%></span> Answers
                  </span>
              </td>
              <td><div class="lques"><a class="qa" href="../answer/answer.jsp?qid=<%=rs.getString("qid")%>"><%=rs.getString("title")%></a></div>
                  <div>
                      <span class="fa fa-user sicon" <!-- glyphicon glyphicon-user sicon--></span>
                      <span class="qsask">Asked by: <%=rs.getString("uname")%></span>
                      
                       <span class="fa fa-folder-open sicon" <!-- glyphicon glyphicon-folder-open sicon--></span>
                      <span class="qsask"><%=rs.getString("topic")%></span>
                      
                      <span class="fa fa-calendar sicon" <!-- glyphicon glyphicon-calendar sicon--></span>
                      <span class="qsask"><%=rs.getString("date")%></span>
                  </div>
              </td>
          </tr>
         <% } %>
          
          
      </table>
    
    
    
    
    
  
   
  </div>


        
       
    </body>
    <script>
        $('a').removeClass('lactive');
        $("#myques").addClass('lactive');
   
    
</script>


</html>

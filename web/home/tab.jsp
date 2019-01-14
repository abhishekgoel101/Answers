<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="https://fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet">
 
  <link rel="stylesheet" type="text/css" href="home/tab.css">
  <link rel="stylesheet" type="text/css" href="home/questable.css">
</head>

<body style="margin: 0px;">
 <jsp:useBean id="c2" scope="page" class="sql.connect" /> 
 <jsp:useBean id="cy" scope="page" class="sql.connect" />     
<div class="container" style="max-width: 800px;margin-left:85px;float: left;padding:0px;">

  <ul class="nav nav-tabs "  >
    <li class="active"><a data-toggle="tab" href="#home">Recent Questions</a></li>
    <li class=""><a data-toggle="tab" href="#menu1">Most Responses</a></li>
    <li class=""><a data-toggle="tab" href="#menu2">Most Rated</a></li>
    <li class="pull-left"><a data-toggle="tab" href="#menu3">Unanswered</a></li>
  </ul>

  <div class="tab-content" >
    <div id="home" class="tab-pane fade in active">
    <% 
    ResultSet rs,rs1,rsy;
    String qry="select * from ques order by date desc;";
    rs=c1.execute(qry);
    String qry1;
    %>
      
      <table class="qtable">
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
              <td><div class="lques"><a class="qa" href="answer/answer.jsp?qid=<%=rs.getString("qid")%>"><%=rs.getString("title")%></a></div>
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
   
         
    <div id="menu1" class="tab-pane fade">
    <% 
        
    String qryy="select count(aid),qid from ans group by(qid) order by count(aid) desc;";
    rsy=cy.execute(qryy);
    
    %>
      
      <table class="qtable">
         <% while(rsy.next()){
         String qid=rsy.getString("qid");
         qry="select * from ques where qid="+qid+";";
         rs=c1.execute(qry);
         rs.next();
         %>
          <tr>
              <td>
                  <span class="tans">
                      <span class="tano"><%=rsy.getString("count(aid)")%></span> Answers
                  </span>
              </td>
              <td><div class="lques"><a class="qa" href="answer/answer.jsp?qid=<%=rs.getString("qid")%>"><%=rs.getString("title")%></a></div>
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
         
    <div id="menu2" class="tab-pane fade">
    <% 
    
    qryy="select * from qvotes order by votes desc;";
    rsy=cy.execute(qryy);
    
    %>
      
      <table class="qtable">
         <% while(rsy.next()){
         String qid=rsy.getString("qid");
         qry="select * from ques where qid="+qid+";";
        
         rs=c1.execute(qry);
         
         rs.next();
         qry1="select count(aid) from ans where qid="+qid+"";
         rs1=c2.execute(qry1);
         %>
          <tr>
              <td>
                  <span class="tans">
                      <span class="tano"><% if(rs1.next()){%><%=rs1.getString("count(aid)")%><%}else{%>0<%}%></span> Answers
                  </span>
              </td>
              <td><div class="lques"><a class="qa" href="answer/answer.jsp?qid=<%=rs.getString("qid")%>"><%=rs.getString("title")%></a></div>
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
    


    %> 
    
    </div>
    <div id="menu3" class="tab-pane fade">
     
    <% 
        
    qryy="select * from ques where qid not in(select qid from ans group by(qid)) order by date desc;";
    rsy=cy.execute(qryy);
    
    %>
      
      <table class="qtable">
         <% while(rsy.next()){
             String qid=rsy.getString("qid");
  
         %>
          <tr>
              <td>
                  <span class="tans">
                      <span class="tano">0</span> Answers
                  </span>
              </td>
              <td><div class="lques"><a class="qa" href="answer/answer.jsp?qid=<%=rsy.getString("qid")%>"><%=rsy.getString("title")%></a></div>
                  <div>
                      <span class="fa fa-user sicon" <!-- glyphicon glyphicon-user sicon--></span>
                      <span class="qsask">Asked by: <%=rsy.getString("uname")%></span>
                      
                       <span class="fa fa-folder-open sicon" <!-- glyphicon glyphicon-folder-open sicon--></span>
                      <span class="qsask"><%=rsy.getString("topic")%></span>
                      
                      <span class="fa fa-calendar sicon" <!-- glyphicon glyphicon-calendar sicon--></span>
                      <span class="qsask"><%=rsy.getString("date")%></span>
                  </div>
              </td>
          </tr>
         <% } %>
          
          
      </table>
    
 
        
        
    
    
    </div>
  </div>
</div>

</body>

</html>

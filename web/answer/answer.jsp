<%-- 
    Document   : askques
    Created on : 22 Mar, 2018, 8:07:55 AM
    Author     : Abhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" type="text/css" href="answer.css">

    </head>
  
    <body style="margin:0px;background-color:white;">
        <jsp:useBean id="c2" scope="page" class="sql.connect" /> 
        <%@ include file="/header/heading.jsp" %>
        <%@ include file="/header/nav.jsp" %>
        <%@ include file="/sidebar/sidebar.jsp" %>

         
        
          <% 
          int qid=Integer.parseInt(request.getParameter("qid"));
          ResultSet rs,rs1;
          String qry="select * from ques where qid="+qid+";";
          rs=c1.execute(qry);
          String qry1="select * from qvotes where qid="+qid+";";
          rs1=c2.execute(qry1);
          rs.next();
          %>  
          
        <div class="content" >
            
         <div style="margin:0px;padding: 20px;
          border:1px solid #DEDEDE;box-shadow: rgb(222, 222, 222) 0px 0px 5px 2px;">
                
             <div style="padding-bottom: 10px;border-bottom:1px solid #DEDEDE;">
                <div class="lques"><%=rs.getString("title")%></div>
                  <div>
                      <span class="fa fa-user sicon" <!-- glyphicon glyphicon-user sicon--></span>
                       <span class="qsask">Asked by: <%=rs.getString("uname")%></span>
                      
                       <span class="fa fa-folder-open sicon" <!-- glyphicon glyphicon-folder-open sicon--></span>
                       <span class="qsask"><%=rs.getString("topic")%></span>
                      
                      <span class="fa fa-calendar sicon" <!-- glyphicon glyphicon-calendar sicon--></span>
                      <span class="qsask"><%=rs.getString("date")%></span>
                  </div>
                </div>   
             <div style="overflow: hidden;padding:10px;padding-left: 0px;padding-bottom: 0px;">
                 <div style="float:left;display: inline-block;">
                     <i class="fa fa-chevron-up" style="font-size:30px;cursor: pointer;"></i>
                     <span class="vote" style="display: block;text-align: center"><% if(rs1.next()){%><%=rs1.getString("votes")%><%}else{%>0<%}%></span>
                     <i class="fa fa-chevron-down" style="font-size:30px;cursor: pointer;"></i>
                 </div>
                 <div style="margin-left: 50px;">
                     <p style="white-space: pre-line"><%=rs.getString("description")%></p>
                 </div>
             </div>
             
             
             
            </div>
           <% 
             qry1="select count(aid) from ans where qid="+qid+";";
             rs1=c2.execute(qry1);
            
              %>
                 
            <div style="clear: both;margin:0px;margin-top: 80px;padding: 20px;
          border:1px solid #DEDEDE;box-shadow: rgb(222, 222, 222) 0px 0px 5px 2px;">
            
            <div class="ans" style="padding-bottom: 10px;border-bottom:2px solid #DEDEDE">
                <span><% if(rs1.next()){%> <%=rs1.getString("count(aid)")%><%}
             else{%>0<%}%></span> Answers
            </div>   
            

        <%
            //for approved answer
            
             qry="select * from ans where qid="+qid+" and approved='Yes';";
             rs=c1.execute(qry);
             
              if(rs.next()){
               String aid=rs.getString("aid");  
       
                    qry1="select * from avotes where aid="+aid+";";
                  rs1=c2.execute(qry1);
                
                %>
                <div style="padding:0px;padding-top: 30px;padding-bottom:30px;
                     overflow: hidden;border-bottom:2px solid #DEDEDE">
                    
                    <div style="float:left;display: inline-block;">
                    <i class="fa fa-chevron-up" style="font-size:30px;cursor: pointer;"></i>
                    <span class="vote" style="display: block;text-align: center"><% if(rs1.next()){%><%=rs1.getString("votes")%><%}else{%>0<%}%></span>
                     <i class="fa fa-chevron-down" style="font-size:30px;cursor: pointer;"></i>
                     <i class="fa fa-check-circle" style="padding-top: 10px;display: block;font-size:35px;color:#00b300;"></i>
                   
                    </div>
                    <div style="margin-left: 50px;">
                <img style="display: block;height: 30px;float:left;" src="avatar.png">   
                <span class="qsask" style="vertical-align:sub;"><%=rs.getString("uname")%> </span>
                
                <div style="padding-top: 20px;">
                    
                    <p style="white-space: pre-line"><%=rs.getString("description")%></p>
    
                </div>
                        
                    </div>
                    
                    
                </div>    
              <% } %>
                
            
          
        <%
                    //for simple answer
                    
             qry="select * from ans where qid="+qid+" and approved='No';";
             rs=c1.execute(qry);
             
              while(rs.next()){
               String aid=rs.getString("aid");  
       
                    qry1="select * from avotes where aid="+aid+";";
                  rs1=c2.execute(qry1);
                
                %>
                <div style="padding:0px;padding-top: 30px;padding-bottom:30px;
                     overflow: hidden;border-bottom:2px solid #DEDEDE">
                    
                    <div style="float:left;display: inline-block;">
                    <i class="fa fa-chevron-up" style="font-size:30px;cursor: pointer;"></i>
                    <span class="vote" style="display: block;text-align: center"><% if(rs1.next()){%><%=rs1.getString("votes")%><%}else{%>0<%}%></span>
                     <i class="fa fa-chevron-down" style="font-size:30px;cursor: pointer;"></i>
                    
                   
                    </div>
                    <div style="margin-left: 50px;">
                <img style="display: block;height: 30px;float:left;" src="avatar.png">   
                <span class="qsask" style="vertical-align:sub;"><%=rs.getString("uname")%> </span>
                
                <div style="padding-top: 20px;">
                    
                    <p style="white-space: pre-line"><%=rs.getString("description")%></p>
    
                </div>
                        
                    </div>
                    
                    
                </div>    
              <% } %>
                
            </div>
                 <form action="answer1.jsp?qid=<%=qid%>" method="post">
            <div style="clear: both;margin:0px;margin-top: 80px;padding: 30px;
          border:1px solid #DEDEDE;box-shadow: rgb(222, 222, 222) 0px 0px 5px 2px;">
                
           <div class="ans" style="padding-bottom: 10px;border-bottom:2px solid #DEDEDE">
            Leave An Answer
           </div>   
             
            <br><br>
                        
        <%@include file="/textarea editor/textarea.jsp" %> 
    
            <br><br><br>
             <div class="w3-center" >
             <button <% if(log==false)
             { %> data-toggle="modal" data-target="#myModal" <% } 
            else { %> type="submit" <% } %> class="w3-button w3-medium w3-block askq w3-hover-black">Post Your Answer</button>
              </div>
               
                
                
            </div>
            
                 </form>
           <br><br><br><br>  
         </div>
       
        
    </body>
    <script>
        $("#edit").attr("placeholder", "Enter Your Answer");
        
    </script>
    
</html>

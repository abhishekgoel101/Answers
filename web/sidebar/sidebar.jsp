<%-- 
    Document   : sidebar
    Created on : 7 Apr, 2018, 3:41:32 PM
    Author     : Abhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    String sd="/IP_Programming_Discussion_Platform/sidebar/";
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" type="text/css" href="<%=sd%>sidebar.css">
    </head>

    <jsp:useBean id="c3" scope="page" class="sql.connect" /> 
    <jsp:useBean id="c4" scope="page" class="sql.connect" /> 
    
    <% ResultSet rs3,rs4;
    String q1="select count(qid) from ques;";
    String q2="select count(aid) from ans;";
    String q3="select count(uname) from login;";
    String q4="select * from qvotes order by votes desc;";
    String q5;
    %>
    
    <body style="margin: 0px;padding: 0px;">
        <br><br><br><br>
        <div style="float: right;background-color: white;width:320px;margin-right:100px;padding-top:5px;">
            
            <a <% if(log==false)
            { %> href="" data-toggle="modal" data-target="#myModal"  <% }
            else{ %>href="<%=sd%>../askques/askques.jsp" <% } %> class="w3-button w3-medium w3-block askqs">Ask a Question</a>
            
            <div style="width: 100%;background-color: white;border:1px solid #DEDEDE;
            padding: 20px;margin-top: 50px;overflow: hidden;
            box-shadow: rgb(222, 222, 222) 0px 0px 5px 2px;">
                
                <h1 class="stat">Stats</h1>
                <ul class="ulstat">
                    <li><div class="idiv">
                            <% rs3=c3.execute(q1);rs3.next(); %>
                            <i class="fa fa-question-circle divicon"></i></div>Questions ( <span id="ques"><%=rs3.getString("count(qid)")%></span> )</li>
                    <li><div class="idiv">
                            <% rs3=c3.execute(q2);rs3.next();%>
                            <i class="fa fa-comment divicon"></i></div>Answers ( <span id="ans"><%=rs3.getString("count(aid)")%></span> )</li>
                    <li><div class="idiv">
                            <% rs3=c3.execute(q3);rs3.next();%>
                            <i class="fa fa-user divicon"></i></div>Users ( <span id="user"><%=rs3.getString("count(uname)")%></span> )</li>
                    
                </ul>
                
            </div>
            
            
            <div style="width: 100%;background-color: white;border:1px solid #DEDEDE;padding: 20px;margin-top:50px;box-shadow: rgb(222, 222, 222) 0px 0px 5px 2px;">
                
                <h1 class="stat">Popular Questions</h1>
                <ul class="ulpopq">
                    <%
                    int i=4;
                    String ii;
                    rs3=c3.execute(q4);
                    while(rs3.next() && i>0)
                    { ii=rs3.getString("qid");
                        q5="select * from ques where qid="+ii+";";
                        rs4=c4.execute(q5);
                        rs4.next();
                    %>
                    <li><a href="<%=sd%>../answer/answer.jsp?qid=<%=ii%>" ><%=rs4.getString("title")%></a></li>
                    <%
                       i=i-1;
                      }
                    %>
                    
                </ul>
                
            </div>
            
            
            
            
        </div>
        
        
    </body>
</html>

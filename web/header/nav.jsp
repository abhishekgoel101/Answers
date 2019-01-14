<!DOCTYPE html>
<html>
<head>
  
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<%
String t="/IP_Programming_Discussion_Platform/";
%>

<body style="margin:0%">

  <div class="navbar">
      <a href="<%=t%>home.jsp" class=lactive>Home</a>
    <a <% if(log==false)
            { %> href="" data-toggle="modal" data-target="#myModal"  <% }
            else{ %>href="<%=t%>askques/askques.jsp" <% } %>
         id="nask">Ask a Question</a>
    
         <div class="dropdown">
      <button class="dropbtn" id="topic">Topic
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="<%=t%>topic/topic.jsp?topic=C/C" >C/C++</a>
        <a href="<%=t%>topic/topic.jsp?topic=Java">Java</a>
        <a href="<%=t%>topic/topic.jsp?topic=SQL">SQL</a>
        <a href="<%=t%>topic/topic.jsp?topic=Python">Python</a>
        <a href="<%=t%>topic/topic.jsp?topic=Android">Android</a>
      </div>
    </div>
    <a <% if(log==false)
            { %> href="" data-toggle="modal" data-target="#myModal"  <% }
            else{ %>href="<%=t%>myques/myques.jsp" <% } %> id="myques">My Questions</a>
  <div class="search-container">
    <form action="<%=t%>search/search.jsp" method="post">
        <input type="text" placeholder="Search.." name="search" required>
      <button type="submit"><i class="fa fa-search" ></i></button>
    </form>
  </div>

</div>


</body>
</html>

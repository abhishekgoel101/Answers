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
<link rel="stylesheet" type="text/css" href="askques.css">

</head>
  
    <body style="margin:0px;background-color:white;">

        <%@ include file="/header/heading.jsp" %>
        <%@ include file="/header/nav.jsp" %>
        <div class="hask">
            <span>
                Ask a Question
            </span>
        </div>
        <%@ include file="/sidebar/sidebar.jsp" %>
        
        <form action="askques1.jsp" method="post">   
        
              <div class="content" >
    
                <h1 class="h1ask">Ask a Question</h1>
                 
                <div class="ucontent">
                
                    <div >
                    <span >Title</span>
                    <input class="w3-input w3-border w3-round" style="margin-top: 8px;" type="text" required name="title">
                    </div>
                 
                    <div >
                    <span >Topic</span>
                      <select class="w3-select w3-border w3-round" style="margin-top: 8px;" name="topic"  required>
                    <option value="" disabled selected>Choose your option</option>
                      <option value="C/C++">C/C++</option>
                      <option value="Java">Java</option>
                        <option value="SQL">SQL</option>
                        <option value="Python">Python</option>
                        <option value="Android">Android</option>
                     </select>
                    
                    </div>
                    
                    <div>
                    <span>Description</span>
                    <%@include file="/textarea editor/textarea.jsp" %> 
                </div>
              
                <div class="w3-center" >
                    <button  type="submit" class="w3-button w3-medium w3-block askq w3-hover-black">Post Your Question</button>
              </div>
                 
            </div>
                  
         </div>
          </form>
             <div style="height:150px;width: 100%;clear: both;"></div>  
                      
        
    </body>
    
<script>
        $('a').removeClass('lactive');
        $("#nask").addClass('lactive');
   
    
</script>

</html>

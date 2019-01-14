<!DOCTYPE html>
<head>
    <title>Sign-Up/Login Form</title>
     <link rel="stylesheet" href="css/login.css">
     
</head>

<body>
        <%@ include file="/modal/incorrectlogin.jsp" %>
    <% 
    if(session.getAttribute("lerror")!=null)
    {session.removeAttribute("lerror");
     %>
     <script>
         modal.style.display = "block";
      </script>
    <%}
    %>
    
  <div class="form">
      
      <ul class="tab-group">
       <li class="tab active"><a href="#login">Log In</a></li>
        <li class="tab"><a href="#signup">Sign Up</a></li>
        
      </ul>
      
      <div class="tab-content">
        
        <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="login1.jsp" method="post">
          
            <div class="field-wrap">
            <label>Username</label>
            <input type="text" placeholder="Enter Username" required name="uname" />
          </div>
          
          <div class="field-wrap">
            <label>Password</label>
            <input type="password" placeholder="Enter Password" required name="pass" autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          <form action="register.jsp" method="post" >
          
         
            <div class="field-wrap">
              <label>Username</label>
              <input type="text" placeholder="New Username" required name="uname" autocomplete="off" />
            </div>
        
            <div class="field-wrap">
              <label>Password</label>
              <input type="password" id="pwd1" placeholder="New Password" name="pass" required              autocomplete="off"/>
            </div>
          

          <div class="field-wrap">
            <label>Renter Password</label>
            <input type="password" id="pwd2" placeholder="Confirm Password" required              autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>Email</label>
            <input type="email" placeholder="Enter Email" required name="email" autocomplete="off"/>
          </div>
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>        

      </div>
      
</div> 

    <script  src="js/jquery-3.3.1.min.js"></script>
    <script  src="js/login.js"></script>


</body>

</html>
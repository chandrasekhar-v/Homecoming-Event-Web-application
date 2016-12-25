<%-- 
    Document   : LoggedinPage
    Created on : Apr 14, 2016, 12:02:33 AM
    Author     : S525097
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<style type="text/css">
 .button {
    background-color: #006747;
    border: none;
    color: white;
    
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
</style>
        <title>JSP Page</title>
    </head>
    <body>
        <title>Welcome</title>
        <div class="container">
            <img src="logo.png" class = "img-rounded" width="100%" height="140">
            <h4><font face="Times New Roman">Welcome, <%=request.getAttribute("userName")%></font></h4>
            <div class="row" align="center">
                <form action="participantServlet">   
                    <div  width="100%" style="background-color: #006747">
                            <button class="col-md-1" style="background-color: #006747;color:white" type="submit" class="button" value="events" name="menu"><font face="Times New Roman" size="4px">Home</font></button>
                    <button class="col-md-1" style="margin-left:970px;background-color: #006747;color:white" type="button" class="button"><font face="Times New Roman" size="4px">Log Out</font></button>
                </div>                 
                    <br>
                    <br>
                    <div class="col-md-12" width="100%" style="background-color: #006747">
                    <button type="button" class="button" value="schedule" name="menu"><font face="Times New Roman" size="4px"><b>FAQ's</b></font></button>
                </div>
                            </form>
                               
            </div>
            <div>
              <br>
              
              <br>
              <div>
                  <div style="padding:0.5% 0% 0.1% 0%; background-color: #B3B3B3; color:white;font-size: 125%;font-family: Times New Roman;">
                        <p data-target="#demos"><font color="black"><b>1. Do you provide space for rehearsal’s before the final event?</b></font></p>
                  </div>
                  <br>
                  <div  style="font-size: 125%;">
                        <span> <font face="Times New Roman" >  Yes, we will provide the place for the participants to do rehearsal’s before the final event.  We will sent you notification about the date and the place for you rehearsal’s.</font></span>
                    </div>
                  <br>
                  <div style="padding:0.5% 0% 0.1% 0%; background-color: #B3B3B3; color:white; font-size: 125%;font-family: Times New Roman">
                          <p data-target="#demo"><font color="black"><b>2. Can we drop from event after registration?</b></font></p>
                  </div>
                  <br>
                    <div style="font-size: 125%">
                     <span> <font face="Times New Roman" > Yes, you can drop from the event once registered. But if you want to drop, you have to drop before the deadline. After the deadline dropping from an event will not be possible.</font></span>
                    </div>
                  <br>
                  <div style="padding:0.5% 0% 0.1% 0%;background-color: #B3B3B3; color:white; font-size: 125%;font-family: Times New Roman">
                          <p data-target="#demo"><font color="black"><b>3. Is there any limit for registration like number of events one person can register?</b></font></p>
                  </div>
                  <br>
                    <div style="font-size: 125%">
                     <span> <font face="Times New Roman" > No there is no limitation in registration. Once can register for any number of events they like. But they have to be aware of the schedules for all the events they registered. Because there are events that happen at the same time but different place.</font></span>
                    </div>
                  <br>
                  <div style="padding:0.5% 0% 0.1% 0%; background-color: #B3B3B3; color:white; font-size: 125%;font-family: Times New Roman">
                          <p data-target="#demo"><font color="black"><b>4. Is there any registration fee for a participant to get registered for an event?</b></font></p>
                  </div>
                  <br>
                    <div style="font-size: 125%">
                     <span> <font face="Times New Roman" > No, the registration for any event is free of cost. One can register for any number of events. But have to check with the schedules as two events can happen at the same time but at different places.</font></span>
                    </div>
              </div>      
            </div>
              <br>
              <br>
              <br>           
            <div class="row" align="center">
                 <form action="participantServlet">
                <div class="col-md-4" width="300%" style="background-color: #006747">
                    <button type="submit" class="button" value="aboutus" name="footer"><font face="Times New Roman" size="4px"><b>About Us</b></font></button>
                </div>
                <div class="col-md-4" width="100%" style="background-color: #006747">
                    <button type="submit" class="button" value="contactus" name="footer"><font face="Times New Roman" size="4px" ><b>Contact Us</b></font></button>
                </div>
                <div class="col-md-4" width="100%" style="background-color: #006747">
                    <button type="submit" class="button" value="faq" name="footer"><font face="Times New Roman" size="4px" ><b>FAQ's</b></font></button>
                </div>
            </form>
                    
        </div>
            
            
    </body>
</html>

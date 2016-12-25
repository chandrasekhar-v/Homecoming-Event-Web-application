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
            <form action="participantServlet">
                <div  width="100%" style="background-color: #006747">
                    <button class="col-md-1" style="background-color: #006747;color:white" type="submit" class="button" value="events" name="menu">Home</button>
                    <button class="col-md-1" style="margin-left:950px;background-color: #006747;color:white" type="button" name="logout" value="logout" class="button"><font face="Times New Roman">Log Out</font></button>
                </div>                 
           </form>
            <br><br>
            <div class="row" align="center">
                <form action="participantServlet">
<!--                <div class="col-md-3" width="300%" style="background-color: #237B43">
                    <button type="submit" class="button" value="events" name="menu">Event Registration</button>
                </div>
                <div class="col-md-3" width="100%" style="background-color: #237B43">
                    <button type="submit" class="button" value="reghistory" name="menu">Registration History</button>
                </div>
                <div class="col-md-3" width="100%" style="background-color: #237B43">
                    <button type="submit" class="button" value="notifications" name="menu">Notifications</button>
                </div>-->
                <div class="col-md-12" width="100%" style="background-color: #006747">
                    <button type="button" class="button" value="schedule" name="menu"><font face="Times New Roman" size="4px" ><b>About Us</b></font></button>
                </div>
                </form>               
             </div>
            <br>
            <div style="font-size:120%">
            <div>
                <span><font face="Times New Roman" size="4px"> 
                    Welcome to Northwest Missouri State University’s Homecoming event website. As an administrator,
                    it’s our privilege to invite you to explore the events that are conducted by our northwest homecoming event team.</font></span>
                <br>
                <br>
                <span><font face="Times New Roman" size="4px" > 
                    We have a history of conducting this homecoming event from past 10 years. And thank you very much for making each and every event a grand success. The Homecoming event was 1st initiated by one of the professors in northwest for the students who are joining northwest for their masters or under graduation. 
                    This event is one of the most awaited events on our campus. Lots of students participate in their interested event and we now encourage everyone to participate in this event and grab a title.</font></span>
                <br><br>
                <span><font face="Times New Roman" size="4px"> 
                   This Homecoming event consists of events that are categorized into Cultural, Arts and Games. One can enroll into any event and can prove themselves. Even this will be a nice recreation for the student who feel stressed because of their studies. 
                   Here we cardinally invite everyone to participate in the event and make this event a grand success as the previous ones.</font></span>
                <br><br>
                <span><font face="Times New Roman">Thank you,</font></span>
            </div>
                <br><br>
            <div>
                <div><b><font face="Times New Roman" >Team Extreme</font></b></div>
                <font face="Times New Roman" >Organizer of the Event</font>
                
            </div>
                <br>           
            </div>
            
            <br><br><br><br>
            
            
            
            <div class="row" align="center">
                 <form action="participantServlet">
                <div class="col-md-4" width="300%" style="background-color: #006747">
                    <button type="submit" class="button" value="aboutus" name="footer"><font face="Times New Roman" size="4px" ><b>About Us</b></font></button>
                </div>
                <div class="col-md-4" width="100%" style="background-color: #006747">
                    <button type="submit" class="button" value="contactus" name="footer"><font face="Times New Roman" size="4px"  ><b>Contact Us</b></font></button>
                </div>
                <div class="col-md-4" width="100%" style="background-color: #006747">
                    <button type="submit" class="button" value="faq" name="footer"><font face="Times New Roman" size="4px" ><b>FAQ's</b></font></button>
                </div>
            </form>
        </div>
            <br>
            
            
    </body>
</html>

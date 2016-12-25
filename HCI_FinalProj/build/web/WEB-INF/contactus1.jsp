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
                    
                    <div class="row" align="center">
                        <form action="participantServlet">
                            <div  width="100%" style="background-color: #006747">
                                    <button class="col-md-1" style="background-color: #006747;color:white" type="submit" class="button" value="events" name="menu"><font face="Times New Roman" size="4px">Home</font></button>
                                <button class="col-md-1" style="margin-left:970px;background-color: #006747;color:white" type="button" class="button"><font face="Times New Roman" size="4px">Log Out</font></button>
                            </div>
                            <br><br>
                            <div class="col-md-12" width="100%" style="background-color: #006747">
                                <button type="button" class="button" value="contactus" name="menu"><font face="Times New Roman" size="4px"><b>Contact Us</b></font></button>
                            </div>
                        </form>


                    </div>
                    <br>
                    <div style="font-size:120%">
                        <img src="contactus.jpg" class = "img-rounded" width="25%" style="padding-left:5%;helght:25%;float:left">
                        <div style="margin-left:5px">
                            <span> <font face="Times New Roman" size="4px"><b>Team Extreme, </b></font> </span>
                            <div float="right">
                                <span><font face="Times New Roman" size="4px" > North West Missouri State University,</font></span>
                            </div>
                            <div float="right">
                                <span><font face="Times New Roman" size="4px">800 University Drive, Maryville, MO 64468</font></span>
                            </div>
                            <div float="right">
                                <span><font face="Times New Roman" size="4px">Phone: 6605288222</font></span>
                            </div>
                             <div float="right">
                                <span><font face="Times New Roman" size="4px">Email: teamextreme@gmail.com</font></span>
                            </div>
                        </div>

                    </div>

                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>



                    <div class="row" align="center" overflow="auto">
                        <form action="participantServlet">
                            <div class="col-md-4" width="300%" style="background-color: #006747">
                                <button type="submit" class="button" value="aboutus" name="footer"><font face="Times New Roman" size="4px" ><b>About Us</b></font></button>
                            </div>
                            <div class="col-md-4" width="100%" style="background-color: #006747">
                                <button type="submit" class="button" value="contactus" name="footer"><font face="Times New Roman" size="4px" ><b>Contact Us</b></font></button>
                            </div>
                            <div class="col-md-4" width="100%" style="background-color: #006747">
                                <button type="submit" class="button" value="faq" name="footer"><font face="Times New Roman" size="4px" ><b>FAQ's</b></font></button>
                            </div>
                        </form>
                    </div>
                    <br>


                    </body>
                    </html>

<%-- 
    Document   : LoggedinPage
    Created on : Apr 14, 2016, 12:02:33 AM
    Author     : S525097
--%>

<%@page import="com.homecomingevent.controller.Schedule"%>
<%@page import="java.util.ArrayList"%>
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
            }
            .button1 {border: 5px solid #006747;
            }
            .p {
                font-family: "Times New Roman";

            }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <title>Welcome</title>
        <div class="container">
            <img src="logo.png" class = "img-rounded" width="100%">
            <h4><font face="Times New Roman">Welcome, <%=request.getAttribute("userName")%></font></h4>
            <div class="row" align="center">
                <form action="participantServlet">
                    <div class="col-md-12" width="300%" align="right">
                        
                        <button type="button" style="background:#006747;color:white"><font face="Times New Roman">Log Out</font></button>
                    </div>
                    <div class="col-md-4" width="300%" style="background-color: #006747;border: 1px solid white;">
                        <button type="submit" class="button width p" value="events" name="menu"><font face="Times New Roman" ><b>Registration Info</b></font></button>
                    </div>
                    <div class="col-md-4" width="100%" style="background-color: #006747">
                        <button type="submit" class="button button1 p" value="schedule" name="menu"><font face="Times New Roman" ><b>Schedule</b></font></button>
                    </div>                
                    <div class="col-md-4" width="100%" style="background-color: #006747;border: 1px solid white;">
                        <button type="submit" class="button width p" value="reghistory" name="menu"><font face="Times New Roman" ><b>Manage Events</b></font></button>
                    </div>
                </form>
            </div>
            <div>
                <br>
                <table id="schedule" class="table table-bordered">
                    <thead style="background-color:#006747">
                        <tr style="color:white">
                            <th class="p" style="padding-left:10%;" align="center">Events</th>
                            <th class="p" style="padding-left:10%;" align="center">Time</th>
                            <th class="p" style="padding-left:10%;" align="center">Location</th>
                                <%
                                    ArrayList<Schedule> schedule = (ArrayList<Schedule>) request.getAttribute("schedule");
                                    for (Schedule s : schedule) {
                                %>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:#ccccff">
                            <td><%= s.getDate()%></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><%= s.getEvent()%></td>
                            <td><%= s.getTime()%></td>
                            <td><%= s.getLocation()%></td>
                        </tr>
                        <%}%>

                    </tbody>
                </table>
            </div>
            <br>
            <br>
            <div class="row" align="center">
                <form action="participantServlet">
                    <div class="col-md-4" width="300%" style="background-color: #006747">
                        <button type="submit" class="button" value="aboutus" name="footer"><font face="Times New Roman" ><b>About Us</b></font></button>
                    </div>
                    <div class="col-md-4" width="100%" style="background-color: #006747">
                        <button type="submit" class="button" value="contactus" name="footer"><font face="Times New Roman" ><b>Contact Us</b></font></button>
                    </div>
                    <div class="col-md-4" width="100%" style="background-color: #006747">
                        <button type="submit" class="button" value="faq" name="footer"><font face="Times New Roman" ><b>FAQ's</b></font></button>
                    </div>
                </form>

            </div>
    </body>
</html>

<%-- 
    Document   : LoggedinPage
    Created on : Apr 14, 2016, 12:02:33 AM
    Author     : S525097
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.TreeSet"%>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
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
            .width {
                width:350px;
                height:27px;
            }
        </style>
        <script>
            function myFunction() {
                document.getElementById("myinput").reset();
            }
            function myFunction1() {
                $('#1').show();
            }
        </script>
        <script type="text/javascript">
            $(#1).hide();
            function drop(a) {


                var message = confirm("Are you sure you want to delete " + a + "?");
                return message;

            }

        </script>
        <script>
            $(document).ready(function () {
                // alert('page loaded');  // alert to confirm the page is loaded    
                $('#1').hide(); //enter the class or id of the particular html element which you wish to hide. 
            });
        </script>
        <script>
            $('#myinput').on('change', function () {
                alert($('input[name=task]:checked', '#myinput').val());
            });
        </script>
        <title>JSP Page</title>
    </head>
    <body>
        <title>Welcome</title>
        <div class="container">
            <img src="logo.png" class = "img-rounded" width="100%">
            <h4><font face="Times New Roman">Welcome, <%=request.getAttribute("userName")%></font></h4>
                <%
                    //              ArrayList<String> arts = new ArrayList();
                    //              arts.add("Painting");
                    //              arts.add("Decoration");
                    //              ArrayList<String> games = new ArrayList();
                    //              games.add("Badminton");
                    //              games.add("Chess");
                    //ArrayList<String> arts = (ArrayList<String>)request.getAttribute("arts");
                    //ArrayList<String> games = (ArrayList<String>)request.getAttribute("games");
                    TreeSet<String> arts = (TreeSet) request.getAttribute("arts");
                    TreeSet<String> games = (TreeSet) request.getAttribute("games");
                    Iterator<String> itrarts = arts.iterator();
                    Iterator<String> itrgames = games.iterator();

                %>
            <div class="row" align="center">
                <form action="participantServlet">

                    <div class="col-md-12" width="300%" align="right">                        
                        <button type="button" style="background-color: #006747;color:white"><font face="Times New Roman">Log Out</font></button>
                    </div>
                    <br><br>
                    <div class="col-md-4" width="300%" style="background-color: #006747;border: 1px solid white;">
                        <button type="submit" class="button width" value="events" name="menu"><font face="Times New Roman" ><b>Registration Info</b></font></button>
                    </div>
                    <div class="col-md-4" width="100%" style="background-color: #006747;border: 1px solid white;">
                        <button type="submit" class="button width" value="schedule" name="menu"><font face="Times New Roman" ><b>Schedule</b></font></button>
                    </div>                
                    <div class="col-md-4" width="100%" style="background-color: #006747">
                        <button type="submit" class="button button1" value="reghistory" name="menu"><font face="Times New Roman" ><b>Manage Events</b></font></button>
                    </div>
                </form>

            </div>
            <br>
            <br>
            <form action="participantServlet">
                <div class="row p" align="center" >              
                    <table>
                        <tr><td><font face="Times New Roman" size="4px"><b>Choose Action:*</b></td></tr>
                        <tr><td><font face="Times New Roman" size="4px"><input type="radio" name="action" value="addevent"> Add Event</font></td><br></tr>
                        <tr><td><font face="Times New Roman" size="4px"><input type="radio" name="action" value="editevent"> Edit Event</font></td><br></tr>
                        <tr><td><font face="Times New Roman" size="4px"><input type="radio" name="action" value="deleteevent"> Delete Event</font></td></tr>
                    </table>
                </div>
                <br>
                <div class="row p" align="center" > <font size="4px"><b>Category* :</b></font>
                    <select name="category2" class="required-entry p" id="category" onchange="javascript: dynamicdropdown(this.options[this.selectedIndex].value);">
                        <option value="arts">ARTS</option>
                        <option value="cultural">CULTURAL</option>
                        <option value="games">GAMES</option>               
                    </select>
                </div>
                <br/>
                <div class="row" align="center">
                    <div class="col-md-6" width="300%" align="right">
                        <button type="button" style="background-color: #006747;color:white" onclick="myFunction()"><font face="Times New Roman" size="4px">Reset</font></button>
                    </div>
                    <div class="col-md-6" width="100%" align="left">
                        <button type="submit" name="history1" style="background-color: #006747;color:white"><font face="Times New Roman" size="4px">Submit</font></button>
                    </div>
                </div>       
            </form>


            <br>


            <br><br><br><br><br><br><br><br>
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

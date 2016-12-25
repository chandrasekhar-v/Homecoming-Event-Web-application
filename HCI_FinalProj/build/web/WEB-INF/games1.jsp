<%-- 
    Document   : LoggedinPage
    Created on : Apr 14, 2016, 12:02:33 AM
    Author     : S525097
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.TreeSet"%>
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
                <div class="row" align="center">
                    <%
                        //TreeMap<String,TreeSet<String>> pageEvents = (TreeMap<String,TreeSet<String>>)request.getAttribute("events");
                        TreeSet<String> pageEvents = (TreeSet) request.getAttribute("events");
                        Iterator<String> itr = pageEvents.iterator();
                    %>

                    <form action="participantServlet">
                        <div class="col-md-12" width="300%" align="right">
                            <h4><font face="Times New Roman">Welcome, <%=request.getAttribute("userName")%></font></h4>
                            <button type="button" class="button"><font face="Times New Roman">Log Out</font></button>
                        </div>
                        <div class="col-md-4" width="300%" style="background-color: #006747;">
                                <button type="submit" class="button button1 p" value="events" name="menu">Registration Info</button>
                            </div>
                            <div class="col-md-4" width="100%" style="background-color: #006747;border: 1px solid white;">
                                <button type="submit" class="button p" value="schedule" name="menu">Schedule</button>
                            </div>                
                            <div class="col-md-4" width="100%" style="background-color: #006747;border: 1px solid white;">
                                <button type="submit" class="button p" value="schedule" name="menu">Manage Events</button>
                            </div>
                        </form>
                    </div>
                    <br>            
                    <br>
                    <br>
                    <form action="participantServlet">
                        <table align="center">
                            <tr>
                                <td>
                                    <b>Category</b><sup><b>*</b></sup>
                                </td>
                                <td>
                                    <select name="categories">
                                        <option value="arts">Arts</option>
                                        <option value="games">Games</option>

                                    </select>
                                </td>
                            </tr>
                        </table>
                        <br>

                        <div class="row" align="center">
                            <div class="col-md-6" width="300%" align="right">
                                <button type="reset" class="button p">Reset</button>
                            </div>
                            <div class="col-md-6" width="100%" align="left">
                                <button type="submit" class="button p">Submit</button>
                            </div>
                        </div>
                    </form>
                    <br>
                    <div style="padding:1% 0% 1% 10%; background-color: #006747; color:white; margin:0% 10% 0% 10%; "><b>Games</b></div>
                <div style="border:1px solid #ccccff;margin:0% 10% 0% 10%;">
                    <form ACTION="jspCheckBox.jsp" style="padding:5% 0% 2% 20%">
                            <%
                                while (itr.hasNext()) {
                                    String games = itr.next();


                            %>
                            <input type="checkbox" name="id" value="<%=games%>" align="center" ><b style="padding-left:1%"><%=games%></b><BR>

                            <div style="padding:2% 2% 2% 5%"> Will be held on</div>
                            <%}%>

                            <input type="submit" value="Register" style="color:green">
                        </form>
                    </div>
                    <br><br><br>
                  <div class="row" align="center">
                    <div class="col-md-6" width="300%" align="right">
                        <button type="button" style="background-color: #006747;color:white">Reset</button>
                    </div>
                    <div class="col-md-6" width="100%" align="left">
                        <button type="submit" style="background-color: #006747;color:white">Submit</button>
                    </div>
                </div>    
         
                    <div class="row" align="center">
                        <form action="participantServlet">
                            <div class="col-md-4" width="300%" style="background-color: #006747">
                                <button type="submit" class="button" value="aboutus" name="footer">About Us</button>
                            </div>
                            <div class="col-md-4" width="100%" style="background-color: #006747">
                                <button type="submit" class="button" value="contactus" name="footer">Contact US</button>
                            </div>
                            <div class="col-md-4" width="100%" style="background-color: #006747">
                                <button type="submit" class="button" value="faq" name="footer">FAQ's</button>
                            </div>
                        </form>

                    </div>


            </body>
        </html>

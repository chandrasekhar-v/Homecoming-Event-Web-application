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
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
                font-size: 18px;
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
                    $('#myModal').show();
            }
           $()
        </script>
        <script type="text/javascript">
            function myFunc() {
                alert("adfad");
                var okay = false;

                alert(document.getElementsByName("arts").length);
                var checkboxs = document.getElementsByName("arts");
                var artsNames = "";
                for (i = 0; i < checkboxs.length; i++)
                {
                    alert("In forloop");
                    //artsNames+= checkboxs;
                    //alert("fasdfasdf"+artsNames);
                    if (checkboxs[i].checked)
                    {
                        artsNames = artsNames + " " + checkboxs[i].value;
                        alert("harsh" + checkboxs[i].value);
                        okay = true;

                    }
                }
                if (okay) {
                    var value = window.confirm("Are you Sure You want to register for" + artsNames);
                    if (value) {
                        var myform = document.getElementById("form");
                        myform.submit();
                    } else {
                    }
                    return okay;
                } else {
                    alert("Please select atleast one Art to register");
                }


            }
        </script>
        <script language="javascript" type="text/javascript">
            function dynamicdropdown(listindex)
            {
                document.getElementById("subcategory").length = 0;
                switch (listindex)
                {
                    case "arts" :

                        document.getElementById("subcategory").options[0] = new Option("DECORATION", "DECORATION");
                        document.getElementById("subcategory").options[1] = new Option("PAINTING", "PAINTING");
                        break;
                    case "cultural" :

                        document.getElementById("subcategory").options[0] = new Option("DANCING", "DANCING");
                        document.getElementById("subcategory").options[1] = new Option("SINGING", "SINGING");
                        break;
                    case "games" :

                        document.getElementById("subcategory").options[0] = new Option("BADMINTON", "BADMINTON");
                        document.getElementById("subcategory").options[1] = new Option("CHESS", "CHESS");
                        break;
                }
                return true;
            }

        </script>
        <title>JSP Page</title>
    </head>
    <body>
        <title>Welcome</title>
        <div class="container">
            <img src="logo.png" class = "img-rounded" width="102%" height="140"> 
           
            
                <%
                    //              ArrayList<String> arts = new ArrayList();
                    //              arts.add("Painting");
                    //              arts.add("Decoration");
                    TreeSet<String> pageEvents = (TreeSet) request.getAttribute("events");
                    Iterator<String> itr = pageEvents.iterator();

                %>
            <div class="row" align="center">
                <form action="participantServlet">               
                    <h4 align="left"><font face="Times New Roman">Welcome, <%=request.getAttribute("userName")%></font></h4>
                    <div class="col-md-12" width="300%" align="right">                        
                        <button type="button" style="background-color: #006747;color:white"><font face="Times New Roman" size="4px">Log Out</font></button>
                    </div>
                    <div class="col-md-4" width="300%" style="background-color: #006747;">
                        <button type="submit" class="button button1 " value="events" name="menu"><font face="Times New Roman" size="4px" ><b>Registration Info</b></font></button>
                    </div>
                    <div class="col-md-4" width="100%" style="background-color: #006747;border: 1px solid white;">
                        <button type="submit" class="button width p" value="schedule" name="menu"><font face="Times New Roman" size="4px"><b>Schedule</b></font></button>
                    </div>                
                    <div class="col-md-4" width="100%" style="background-color: #006747;border: 1px solid white;">
                        <button type="submit" class="button width p" value="reghistory" name="menu"><font face="Times New Roman" size="4px"><b>Manage Events</b></font></button>
                    </div>
                </form>
            </div>
            <br>   
            <form action="participantServlet">
                 <div class="row p" align="center" > <font size="3"><b>Category* :</b></font>
                    <select name="category" class="required-entry p" id="category" onchange="javascript: dynamicdropdown(this.options[this.selectedIndex].value);">
                        <option value="arts">ARTS</option>
                        <option value="cultural">CULTURAL</option>
                        <option value="games">GAMES</option>               
                    </select>
                </div>
                <br/>

                <div class="row p" align="center"><font size="3"><b>Event* :</b></font>
                    <script type="text/javascript" language="JavaScript">
                        document.write('<select name="subcategory" id="subcategory"><option value="">DECORATION</option></select>');
                    </script>
                    <noscript>
                    <select name="subcategory" id="subcategory" >
                        <option value="" class="p">DECORATION</option>
                    </select>
                    </noscript>
                </div>
                <br>

                <div class="row" align="center">
                    <div class="col-md-6" width="300%" align="right">
                        <button type="button" class="button p" >Reset</button>
                    </div>
                    <div class="col-md-6" width="100%" align="left">
                        <button type="submit" class="button p">Submit</button>
                    </div>
                </div>
            </form>
            
            <br>
            <div style="padding:1% 0% 1% 10%; background-color: #006747; color:white; margin:0% 10% 0% 20%; "><font face="Times New Roman" size="4px"><b>Arts-Badminton </b></font></div>
            <div style="border:1px solid #ccccff;margin:0% 10% 0% 20%;">
                
                 <div id="2" style="width:100%;align-self: center;margin-left: 15%">
                <table style="width:60%">
                    <tr>
                        <td class="p">
                            <b>Name of the Participant</b>
                        </td>

                        <td class="p">
                            <font face="Times New Roman" > <b>Registered Time</b></font>
                        </td>
                        <td></td>
                        <td>
                            <font face="Times New Roman">  <b>Actions</b> </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <font face="Times New Roman" size="4px"> Chandrasekhar V</font>
                        </td>

                        <td class="p">
                            12:21 AM 04/12/2016
                        </td>
                        <td></td>
                        <td><button class="button p" id="modal_open" data-toggle="modal">Notify</button>

                        </td>
                        <td><button class="button p" onclick="myFunction1()">Reject
                               </button>
                    </tr>

                </table>
            </div>     
            </div>
        
        <script>
            function func1(){
            alert("Message sent successfully");
        }
            </script>
                    <!-- Latest compiled and minified JavaScript -->
        <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
            <br><br><br><br>
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

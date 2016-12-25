<%-- 
    Document   : addevent
    Created on : Apr 27, 2016, 2:18:59 AM
    Author     : S525251
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
    .error{
        color:red;
    }
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
<script type="text/javascript">
    var flag = true;
    
    function validation(){
       // alert("working");
       // setTimeout(function(){ alert("Account has been successfully created!!"); }, 2000);
        var flag = true;
        //alert(flag);
        if(document.getElementById("eventtitle").value === ""){
            alert("chandu");
            document.getElementById("etitle").innerHTML = "Event Title should not be left blank ";
            flag = false;
        }       
        else{
            document.getElementById("etitle").innerHTML = "";
        }
        ////////////////////////////////////
        if(document.getElementById("regdeadline").value === ""){
            document.getElementById("rdeadline").innerHTML = "Registration deadline should not be left blank ";
            flag = false;
        }      
      else{
            document.getElementById("regdeadline").innerHTML = "";
        }
        //////////////////////////////////////
        
        if(document.getElementById("limit").value === ""){
            document.getElementById("limit1").innerHTML = "Participant's Limit should not be left blank ";
            flag = false;
        }      
      else{
            document.getElementById("limit").innerHTML = "";
        }
        ///////////////////////////////////////////
         if(document.getElementById("eventlocation").value === ""){
            document.getElementById("elocation").innerHTML = "Event Location should not be left blank ";
            flag = false;
        }      
      else{
            document.getElementById("elocation").innerHTML = "";
        }
        ////////////////////////////////////////////
        if(document.getElementById("competitiondate").value === ""){
            document.getElementById("cdate").innerHTML = "Competition Date should not be left blank ";
            flag = false;
        }      
      else{
            document.getElementById("cdate").innerHTML = "";
        }
        //alert(flag);
         if(flag){
             alert("Event Posted Successfully");
             return flag;
         }      
        return flag;
        
        
    }
    
</script>
<style> .button {
                background-color: #006747;
                border: none;
                color: white;

                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
            }</style>
        <title>JSP Page</title>
    </head>
    
    <body>
        <title>Welcome</title>
        <div class="container">
            <img src="logo.png" class = "img-rounded" width="100%">
            <br>
            <br>
             <form action="participantServlet">
                <div  width="100%" style="background-color: #006747">
                    <button class="col-md-1" style="background-color: #006747;color:white" type="submit" class="button" value="events" name="menu"><font face="Times New Roman" size="4px">Home</font></button>
                    <button class="col-md-1" style="margin-left:950px;background-color: #006747;color:white" type="button" class="button"><font face="Times New Roman" size="4px">Log Out</font></button>
                </div>                 
           </form>
            <br><br>
            <div style="border:1px solid #ccccff; align-items: center">
              <br>
              <form class="form-horizontal" role="form"  onsubmit="return validation()" action="participantServlet">
                  <h2 style="padding-left: 30%"><b>Add New Event</b></h2>
                    <br>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"><font face="Times New Roman" size="5%">Event Title:</font></label>
                    <div class="col-sm-5">
                        <input type="text" id="eventtitle" name="eventtitle" placeholder="Event Title" class="form-control" autofocus>
                        <span class="error" id="etitle"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label"><font face="Times New Roman" size="5%">Registration Deadline</font></label>
                    <div class="col-sm-5">
                        <input type="date" id="regdeadline" name="regdeadline" class="form-control">
                        <span class="error" id="rdeadline"></span>
                    </div>
                </div>        
                   
               <div class="form-group">
                    <label for="hnumber" class="col-sm-3 control-label"><font face="Times New Roman" size="5%">Participant's Limit</font></label>
                    <div class="col-sm-5">
                        <input type="number" id="limit" name="limit" class="form-control" placeholder="Participant Limit">
                        <span class="error" id="limit1"></span>
                    </div>
                </div>            
                    <div class="form-group">
                    <label for="eventlocation" class="col-sm-3 control-label"><font face="Times New Roman" size="5%">Event Location</font></label>
                    <div class="col-sm-5">
                        <input type="text" id="eventlocation" name="eventlocation" placeholder="Event Location" class="form-control" autofocus>
                        <span class="error" id="elocation"></span>
                    </div>
             
                </div>   
                    <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label"><font face="Times New Roman" size="5%">Competition Date</font></label>
                    <div class="col-sm-5">
                        <input type="date" id="competitiondate" name="competitiondate" class="form-control">
                        <span class="error" id="cdate"></span>
                    </div>
                </div>   
                <div class="form-group">
                    <div class="col-sm-2 col-sm-offset-3">
                        <button type="reset" class="btn btn-block" style="background-color: #006747; color: white">Reset</button>
                    </div>
                   <div class="col-sm-2">
                        <button type="submit" name="post" value="post" class="btn  btn-block" style="background-color: #006747; color: white">Post Event</button>                </div>
                </div>
            </form> <!-- /form -->     
        
            
                
                
                
                
            </div>
            
            <br>
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
                     <br><br><br>
            </form>
                    
        </div>
            
            
    </body>
    
</html>

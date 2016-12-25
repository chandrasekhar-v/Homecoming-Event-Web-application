package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import java.util.TreeSet;
import java.util.ArrayList;

public final class homepage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" integrity=\"sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!-- Optional theme -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css\" integrity=\"sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!-- Latest compiled and minified JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\" integrity=\"sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            .button {\n");
      out.write("                background-color: #006747;\n");
      out.write("                border: none;\n");
      out.write("                color: white;\n");
      out.write("\n");
      out.write("                text-align: center;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: inline-block;\n");
      out.write("                font-size: 18px;\n");
      out.write("                margin: 4px 2px;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .button1 {border: 5px solid #006747;\n");
      out.write("              }\n");
      out.write("            .p {\n");
      out.write("                font-family: \"Times New Roman\";\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .width {\n");
      out.write("                width:350px;\n");
      out.write("                height:27px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function myFunc() {\n");
      out.write("                alert(\"adfad\");\n");
      out.write("                var okay = false;\n");
      out.write("\n");
      out.write("                alert(document.getElementsByName(\"arts\").length);\n");
      out.write("                var checkboxs = document.getElementsByName(\"arts\");\n");
      out.write("                var artsNames = \"\";\n");
      out.write("                for (i = 0; i < checkboxs.length; i++)\n");
      out.write("                {\n");
      out.write("                    alert(\"In forloop\");\n");
      out.write("                    //artsNames+= checkboxs;\n");
      out.write("                    //alert(\"fasdfasdf\"+artsNames);\n");
      out.write("                    if (checkboxs[i].checked)\n");
      out.write("                    {\n");
      out.write("                        artsNames = artsNames + \" \" + checkboxs[i].value;\n");
      out.write("                        alert(\"harsh\" + checkboxs[i].value);\n");
      out.write("                        okay = true;\n");
      out.write("\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                if (okay) {\n");
      out.write("                    var value = window.confirm(\"Are you Sure You want to register for\" + artsNames);\n");
      out.write("                    if (value) {\n");
      out.write("                        var myform = document.getElementById(\"form\");\n");
      out.write("                        myform.submit();\n");
      out.write("                    } else {\n");
      out.write("                    }\n");
      out.write("                    return okay;\n");
      out.write("                } else {\n");
      out.write("                    alert(\"Please select atleast one Art to register\");\n");
      out.write("                }\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <title>Welcome</title>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <img src=\"logo.png\" class = \"img-rounded\" width=\"100%\" height=\"150\">\n");
      out.write("            \n");
      out.write("                ");

                    //              ArrayList<String> arts = new ArrayList();
                    //              arts.add("Painting");
                    //              arts.add("Decoration");
                    TreeSet<String> pageEvents = (TreeSet) request.getAttribute("events");
                    Iterator<String> itr = pageEvents.iterator();

                
      out.write("\n");
      out.write("            <div class=\"row\" align=\"center\">\n");
      out.write("                <form action=\"participantServlet\">               \n");
      out.write("                    <h4 align=\"left\"><font face=\"Times New Roman\">Welcome, ");
      out.print(request.getAttribute("userName"));
      out.write("</font></h4>\n");
      out.write("                    <div class=\"col-md-12\" width=\"300%\" align=\"right\">                        \n");
      out.write("                        <button type=\"button\" style=\"background-color: #006747;color:white\"><font face=\"Times New Roman\">Log Out</font></button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\" width=\"300%\" style=\"background-color: #006747;\">\n");
      out.write("                        <button type=\"submit\" class=\"button button1 \" value=\"events\" name=\"menu\"><font face=\"Times New Roman\" ><b>Registration Info</b></font></button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\" width=\"100%\" style=\"background-color: #006747;border: 1px solid white;\">\n");
      out.write("                        <button type=\"submit\" class=\"button width p\" value=\"schedule\" name=\"menu\"><font face=\"Times New Roman\" ><b>Schedule</b></font></button>\n");
      out.write("                    </div>                \n");
      out.write("                    <div class=\"col-md-4\" width=\"100%\" style=\"background-color: #006747;border: 1px solid white;\">\n");
      out.write("                        <button type=\"submit\" class=\"button width p\" value=\"reghistory\" name=\"menu\"><font face=\"Times New Roman\" ><b>Manage Events</b></font></button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <form action=\"participantServlet\">\n");
      out.write("                <table align=\"center\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <b>Category:</b><sup><b>*</b></sup>&nbsp;\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <select name=\"categories\">\n");
      out.write("                                <option value=\"arts\">Arts</option>\n");
      out.write("                                <option value=\"games\">Games</option>\n");
      out.write("                                <option value=\"cultural\">Cultural</option>\n");
      out.write("                            </select>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><br/></td>\n");
      out.write("                        <td></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <b>Event:</b><sup><b>*</b></sup>&nbsp;\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <select name=\"events\">\n");
      out.write("                                <option value=\"arts\">Arts</option>\n");
      out.write("                                <option value=\"games\">Games</option>\n");
      out.write("                                \n");
      out.write("                            </select>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <div class=\"row\" align=\"center\">\n");
      out.write("                    <div class=\"col-md-6\" width=\"300%\" align=\"right\">\n");
      out.write("                        <button type=\"button\" style=\"background-color: #006747;color:white\">Reset</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\" width=\"100%\" align=\"left\">\n");
      out.write("                        <button type=\"submit\" style=\"background-color: #006747;color:white\">Submit</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>            \n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("            <div style=\"padding:1% 0% 1% 10%; background-color: #006747; color:white; margin:0% 10% 0% 10%; \"><b>Arts</b></div>\n");
      out.write("            <div style=\"border:1px solid #ccccff;margin:0% 10% 0% 10%;\">\n");
      out.write("                <form id=\"form\" action=\"participantServlet\" style=\"padding:5% 0% 2% 20%\">\n");
      out.write("                    <!--                <input type=\"checkbox\" name=\"id\" value=\"Painting\" align=\"center\" ><b style=\"padding-left:1%\">Painting</b><BR>\n");
      out.write("                                    \n");
      out.write("                                    <div style=\"padding:2% 2% 2% 5%\"> Will be held on fadfasdfasdfasdfasdf</div>-->\n");
      out.write("\n");
      out.write("                    ");
                    while (itr.hasNext()) {
                            String arts = itr.next();


                    
      out.write("\n");
      out.write("\n");
      out.write("                    <input type=\"checkbox\" name=\"arts\" value=\"");
      out.print(arts);
      out.write("\"><b style=\"padding-left:1%\">");
      out.print( arts);
      out.write("</b><br>\n");
      out.write("                    <div style=\"padding:2% 2% 2% 5%\"> Harsha</div>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                    <input type=\"button\" value=\"Register\" style=\"background-color: #006747;color:white\" onClick=\"return myFunc();\">\n");
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                       <!-- alert(\"done buddy\"); -->\n");
      out.write("                    </script>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("                  \n");
      out.write("            <br><br><br><br>\n");
      out.write("            <div class=\"row\" align=\"center\">\n");
      out.write("                <form action=\"participantServlet\">\n");
      out.write("                    <div class=\"col-md-4\" width=\"300%\" style=\"background-color: #006747\">\n");
      out.write("                        <button type=\"submit\" class=\"button\" value=\"aboutus\" name=\"footer\"><font face=\"Times New Roman\" ><b>About Us</b></font></button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\" width=\"100%\" style=\"background-color: #006747\">\n");
      out.write("                        <button type=\"submit\" class=\"button\" value=\"contactus\" name=\"footer\"><font face=\"Times New Roman\" ><b>Contact Us</b></font></button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\" width=\"100%\" style=\"background-color: #006747\">\n");
      out.write("                        <button type=\"submit\" class=\"button\" value=\"faq\" name=\"footer\"><font face=\"Times New Roman\" ><b>FAQ's</b></font></button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

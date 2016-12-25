/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.homecomingevent.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author S525097
 */
@WebServlet(name = "ParticipantContoller", urlPatterns = {"/participantServlet"})
public class ParticipantContoller extends HttpServlet implements ServletContextListener {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String artsButton = request.getParameter("arts");
        String[] arts = request.getParameterValues("arts");
        String button = request.getParameter("menu");
        String footerButton = request.getParameter("footer");
        System.out.println("button name is "+button);
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        String category = request.getParameter("categories");
        System.out.println("dropbutton clisked"+artsButton);
        Statement st = null;
        Connection Conn = null;
        /////////////Admin code///////////////////////////
        String etitle  = request.getParameter("eventtitle");
        String rdeadline = request.getParameter("regdeadline");
        String limit = request.getParameter("limit");
        String elocation = request.getParameter("eventlocation");
        String cdate = request.getParameter("competitiondate");
        String button1 = request.getParameter("post");
        String check = request.getParameter("category2");
        String button3 = request.getParameter("history1");
        String actioncheck = request.getParameter("action");
        String logout = request.getParameter("logout");
        String editevent = request.getParameter("edit");
       String editdone = request.getParameter("editdone");
       String drop = request.getParameter("action");
       // TreeMap<String,TreeSet<String>> events = new TreeMap();
       ArrayList<Schedule> scheduleAL = new ArrayList();
         TreeSet<String> artsTS = new TreeSet<String>();
//              artsAL.add("Painting");
//              artsAL.add("Decoration");
//              artsAL.add("Culturals");
         TreeSet<String> gamesTS = new TreeSet<String>();
         TreeSet<String> culturalTS = new TreeSet<String>();
//              gamesAL.add("Badminton");
//              gamesAL.add("Chess");
              //System.out.println("does button contains that element"+artsTS.contains((String)artsButton));
        //String categoryArts = request.getParameter("categories");
        //System.out.println("harsha yadav rachakunta"+request.getParameter("categories"));
        
        //System.out.println("rachakuntaafter"+request.getParameter("name"));
        
        
        
        //--------------------------------------------
         String userName="";
         try {
            System.out.println("connection before");
         Conn = MySqlConnect.ConnectDB();
        System.out.println("connection after121");
        PreparedStatement query = Conn.prepareStatement("select firstName from user where apartmentnumber=12");
       if(Conn != null){
        st = Conn.createStatement();
        System.out.println("1");
       }
        ResultSet rs = st.executeQuery("select firstname from user where emailid="+request.getParameter("name"));
        System.out.println("2");
        while(rs.next()){
            System.out.println("3");
            if(rs.getString(1).isEmpty()){
                System.out.println("wrong username");
            }
            else{
             userName = rs.getString("firstName");
              System.out.println("right username"+userName);
            }
        }
        System.out.println("4");
        
        }
        catch(SQLException ex) {
            
        }
         userName = "bearcat";
        //System.out.println();
        //--------------------------------------------
       
        try {
        if((category!= null && category.equals((String)"arts")) || button != null && button.equals((String)"events")){
            ResultSet rs = st.executeQuery("select * from events");
            while(rs.next()){
            System.out.println("3");
            if(rs.getString("eventCategory").equals("Arts")){
                artsTS.add(rs.getString("eventType"));
               // events.put(rs.getString("eventCategory"),gamesTS);
            }
//            else{
//                artsTS.add(rs.getString("eventType"));
//                events.put(rs.getString("eventCategory"),artsTS);
//            }
           
            }
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/LoggedinPage1.jsp");
        request.setAttribute("events", artsTS);
        request.setAttribute("userName",userName);
        rd.forward(request, response);
        }
        else if(category!= null && category.equals((String)"games")){
            ResultSet rs = st.executeQuery("select * from events");
            while(rs.next()){
            System.out.println("3");
            if(rs.getString("eventCategory").equals("Games")){
                gamesTS.add(rs.getString("eventType"));
               // events.put(rs.getString("eventCategory"),gamesTS);
            }
//            else{
//                artsTS.add(rs.getString("eventType"));
//                events.put(rs.getString("eventCategory"),artsTS);
//            }
           
            }
            
            System.out.println(request.getParameter("games"));
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/games1.jsp");
            request.setAttribute("events", gamesTS);
            request.setAttribute("userName",userName);
            rd.forward(request, response);
        }
//        else if(category!= null && category.equals((String)"arts")){
//            System.out.println(request.getParameter("arts"));
//            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/LoggedinPage.jsp");
//            rd.forward(request, response);
//        }
//        else if(button != null && button.equals((String)"events")){
//            System.out.println(request.getParameter("arts"));
//            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/LoggedinPage.jsp");
//            rd.forward(request, response);
//            
//        }
        else if(button != null && button.equals((String)"reghistory")){
            ResultSet rs = st.executeQuery("select eventID from eventhistory where emailID = 'harsha@gmail.com'");
            Statement st2 = Conn.createStatement();
             //ResultSet rs1 = st.executeQuery("select ");
             System.out.println("result set size ");
            while(rs.next()){
                String emailid= rs.getString("eventID");
                System.out.println(" eventid is "+emailid);
            //System.out.println("3");
            if(emailid!= null){
                ResultSet rs1 = st2.executeQuery("select * from events where eventid ="+emailid);
                while(rs1.next()){
                    if(rs1.getString("eventCategory").equals((String)"Games")){
                        gamesTS.add(rs1.getString("eventType"));
                    }
                    else if(rs1.getString("eventCategory").equals((String)"Arts")){
                        artsTS.add(rs1.getString("eventType"));
                    }
                    else if(rs1.getString("eventCategory").equals((String)"Cultural")){
                        culturalTS.add(rs1.getString("eventType"));     
                    }
               
                    System.out.println("endofinnerloop");// events.put(rs.getString("eventCategory"),gamesTS);
            }
//            else{
//                artsTS.add(rs.getString("eventType"));
//                events.put(rs.getString("eventCategory"),artsTS);
//            }
                System.out.println("endof outerloop");
            }
            }
            System.out.println(request.getParameter("arts"));
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/history1.jsp");
            request.setAttribute("games", gamesTS);
            request.setAttribute("arts", artsTS);
            request.setAttribute("cultural", culturalTS);
            request.setAttribute("userName",userName);
            rd.forward(request, response);
            
        
        }
        
        else if(button != null && button.equals((String)"schedule")){
            System.out.println("in schedule");
              ResultSet rs = st.executeQuery("select * from events");
            //Statement st2 = Conn.createStatement();
             //ResultSet rs1 = st.executeQuery("select ");
             System.out.println("result set size ");
            while(rs.next()){
                    scheduleAL.add(new Schedule(rs.getString("eventDate"), rs.getString("eventVenue"), rs.getString("eventtime"), rs.getString("eventType")));
            }
            request.setAttribute("schedule",scheduleAL);
            System.out.println("schedule after-----------------------------------------------");
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/schedule1.jsp");
            request.setAttribute("userName",userName);
            rd.forward(request, response);
            
        }
        else if(footerButton != null && footerButton.equals((String)"aboutus")){
             
            System.out.println("shedfasdfasdfsd-----------------------------------------------");
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/aboutus1.jsp");
            request.setAttribute("userName",userName);
            rd.forward(request, response); 
        }
        else if(footerButton != null && footerButton.equals((String)"contactus")){
             
            System.out.println("shedfasdfasdfsd-----------------------------------------------");
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/contactus1.jsp");
            request.setAttribute("userName",userName);
            rd.forward(request, response); 
        }
        else if(footerButton != null && footerButton.equals((String)"faq")){
             
            System.out.println("shedfasdfasdfsd-----------------------------------------------");
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/faq1.jsp");
            request.setAttribute("userName",userName);
            rd.forward(request, response); 
        }
        else if(button1 != null && button1.equals((String)"post")){
            String arts1 = "Arts";
            int empty = 2;
            String time = "12:00PM";
            int eid = 500;
            int limit2 = 4;
             System.out.println("chandu register ");
             String query = "insert into events values("+eid+",'"
             +etitle+"','"+time+"','"+cdate+"','"+elocation+"','"+arts1+"','"+rdeadline+"',"+limit2+","+empty+")";
            // int rs = st.executeUpdate("insert into user values("+eid+",'"
            // +etitle+"','"+time+"','"+cdate+"','"+elocation+"','"+arts1+"','"+rdeadline+"',"+limit2+","+empty+")");
             int rs = st.executeUpdate(query);
             System.out.println("harsha yadav register ");            
            System.out.println("shedfasdfasdfsd-----------------------------------------------");
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/history1.jsp");
          //  request.setAttribute("userName",userName);
           request.setAttribute("games", gamesTS);
            request.setAttribute("arts", artsTS);
            request.setAttribute("cultural", culturalTS);
            request.setAttribute("userName",userName);
            rd.forward(request, response); 
        }
        else if(button3!=null && actioncheck.equals((String)"addevent")){
            System.out.println("chandu check this");
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/addevent.jsp");
          //  request.setAttribute("userName",userName);
//           request.setAttribute("games", gamesTS);
//            request.setAttribute("arts", artsTS);
//            request.setAttribute("cultural", culturalTS);
//            request.setAttribute("userName",userName);
            rd.forward(request, response); 
        }
         else if(button3!=null && actioncheck.equals((String)"editevent")){
            System.out.println("chandu check this");
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/editevent.jsp");
          //  request.setAttribute("userName",userName);
//           request.setAttribute("games", gamesTS);
//            request.setAttribute("arts", artsTS);
//            request.setAttribute("cultural", culturalTS);
//            request.setAttribute("userName",userName);
            rd.forward(request, response); 
        }
          else if(actioncheck!=null && actioncheck.equals((String)"dropevent")){
             System.out.println("cc");
             RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/dropevent.jsp");
             rd.forward(request, response); 
             
         }
         else if(editevent!=null && editevent.equals((String)"edit")){
             
             RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/edit.jsp");
             String eventT = "Decoration";
             String regd = "08/26/2016";
             String pl = "50";
             String el = "Recreation Center";
             String compd = "12/26/2016";
             
             
            request.setAttribute("eventtitle",eventT);
           request.setAttribute("regdeadline",regd);
            request.setAttribute("limit", pl);
            request.setAttribute("eventlocation",el);
            request.setAttribute("competitiondate",compd);
            rd.forward(request, response); 
             
         }
         else if(editdone!=null && editdone.equals((String)"editdone")){
             
             RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/history1.jsp");
             request.setAttribute("games", gamesTS);
            request.setAttribute("arts", artsTS);
            request.setAttribute("cultural", culturalTS);
            request.setAttribute("userName",userName);
             
            
            rd.forward(request, response); 
             
         }
         
        else if(logout!=null && logout.equals((String)"logout")){
         
            RequestDispatcher rd = request.getRequestDispatcher("home.html");
            rd.forward(request, response);
            
        }    else if(artsButton != null){
            System.out.println("artsbutton clicked");
            Statement st3 = Conn.createStatement();
            System.out.println("delete from eventhistory where eventid=(select eventid from events where eventType='"+artsButton+"')");
            st.executeUpdate("delete from eventhistory where eventid=(select eventid from events where eventType='"+artsButton+"')");
            System.out.println("deleted------------------");
            ResultSet rs = st.executeQuery("select eventID from eventhistory where emailID = 'harsha@gmail.com'");
            Statement st2 = Conn.createStatement();
             //ResultSet rs1 = st.executeQuery("select ");
             System.out.println("result set size ");
            while(rs.next()){
                String emailid= rs.getString("eventID");
                System.out.println(" eventid is "+emailid);
            //System.out.println("3");
            if(emailid!= null){
                ResultSet rs1 = st2.executeQuery("select * from events where eventid ="+emailid);
                while(rs1.next()){
                    if(rs1.getString("eventCategory").equals((String)"Games")){
                        gamesTS.add(rs1.getString("eventType"));
                    }
                    else if(rs1.getString("eventCategory").equals((String)"Arts")){
                        artsTS.add(rs1.getString("eventType"));
                                }
               
                    System.out.println("endofinnerloop");// events.put(rs.getString("eventCategory"),gamesTS);
            }
//            else{
//                artsTS.add(rs.getString("eventType"));
//                events.put(rs.getString("eventCategory"),artsTS);
//            }
                System.out.println("endof outerloop");
            }
            }
            System.out.println(request.getParameter("arts"));
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/history1.jsp");
            request.setAttribute("games", gamesTS);
            request.setAttribute("arts", artsTS);
            request.setAttribute("cultural",culturalTS);
            request.setAttribute("userName",userName);
            rd.forward(request, response);
//            ResultSet rs = st.executeQuery("select eventID from eventhistory where emailID = 'harsha@gmail.com'");
//            Statement st2 = Conn.createStatement();
//             //ResultSet rs1 = st.executeQuery("select ");
//             System.out.println("result set size ");
//            while(rs.next()){
//                String emailid= rs.getString("eventID");
//                System.out.println(" eventid is "+emailid);
//            //System.out.println("3");
//            if(emailid!= null){
//                ResultSet rs1 = st2.executeQuery("select * from events where eventid ="+emailid);
//                while(rs1.next()){
//                    if(rs1.getString("eventCategory").equals((String)"Games")){
//                        gamesTS.add(rs1.getString("eventType"));
//                    }
//                    else if(rs1.getString("eventCategory").equals((String)"Arts")){
//                        artsTS.add(rs1.getString("eventType"));
//                                }
//               
//                    System.out.println("endofinnerloop");// events.put(rs.getString("eventCategory"),gamesTS);
//            }
////            else{
////                artsTS.add(rs.getString("eventType"));
////                events.put(rs.getString("eventCategory"),artsTS);
////            }
//                System.out.println("endof outerloop");
//            }
            
//            System.out.println("shedfasdfasdfsd-----------------------------------------------"+artsButton);
//            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/history.jsp");
////            artsAL.remove(artsButton);
////            request.setAttribute("arts", artsAL);
////            request.setAttribute("games", gamesAL);
//            rd.forward(request, response); 
        }
        else{
             RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/LoggedinPage1.jsp");
        request.setAttribute("events", artsTS);
        request.setAttribute("userName",userName);
        rd.forward(request, response);
        }
        
        }
        catch(ServletException | IOException ex) {
            
        }
        
        
        
        
        
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet ParticipantContoller</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet ParticipantContoller at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ParticipantContoller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ParticipantContoller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
     Enumeration<Driver> drivers = DriverManager.getDrivers(); 
      while (drivers.hasMoreElements()) {
            Driver driver = drivers.nextElement();
            try {
                System.out.println("deregistering");
                DriverManager.deregisterDriver(driver);
               // LOG.log(Level.INFO, String.format("deregistering jdbc driver: %s", driver));
            } catch (SQLException e) {
            //    LOG.log(Level.SEVERE, String.format("Error deregistering driver %s", driver), e);
            }
//To change body of generated methods, choose Tools | Templates.
    }
    }
}

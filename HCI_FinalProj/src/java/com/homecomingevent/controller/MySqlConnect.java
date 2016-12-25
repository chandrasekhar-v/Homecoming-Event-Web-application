/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.homecomingevent.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author S525251
 */
public class MySqlConnect {

        Connection myConn = null;
    public static Connection ConnectDB() throws SQLException {
        // TODO code application logic here
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        String user = "root";
        String pass = "chandu";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            // 1. Get a connection to database
            
            myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chandu?autoReconnect=true&useSSL=false", user, pass);
            System.out.println("database connection started");
            // 2. Create a statement
            myStmt = myConn.createStatement();
            System.out.println("in harsha");
            // 3. Execute SQL query
//            myRs = myStmt.executeQuery("select * from employees");
//            while(myRs.next()){
//                System.out.println("Harsha Yadav  ."+myRs.findColumn("last_name"));
//            }
//
//            // 4. Process the result set
//            while (myRs.next()) {
//                System.out.println(myRs.getString("last_name") + ", " + myRs.getString("first_name"));
//            }
            return myConn;

        } catch (ClassNotFoundException | SQLException exc) {
            return null;
        }
    }
}
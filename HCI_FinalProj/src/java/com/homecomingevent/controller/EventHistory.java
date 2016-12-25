/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.homecomingevent.controller;

/**
 *
 * @author S525251
 */
public class EventHistory {
    
    private String emailID;
    private int eventID;
    private String notification;

    public EventHistory(String emailID, int eventID, String notification) {
        this.emailID = emailID;
        this.eventID = eventID;
        this.notification = notification;
    }

    public String getEmailID() {
        return emailID;
    }

    public void setEmailID(String emailID) {
        this.emailID = emailID;
    }

    public int getEventID() {
        return eventID;
    }

    public void setEventID(int eventID) {
        this.eventID = eventID;
    }

    public String getNotification() {
        return notification;
    }

    public void setNotification(String notification) {
        this.notification = notification;
    }

    
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.homecomingevent.controller;

/**
 *
 * @author S525097
 */
public class Schedule {
    private String date;
    private String location;
    private String time;
    private String event;

    public Schedule(String date, String location, String time, String event) {
        this.date = date;
        this.location = location;
        this.time = time;
        this.event = event;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }
    
}

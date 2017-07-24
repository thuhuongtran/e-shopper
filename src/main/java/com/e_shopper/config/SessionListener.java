/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.config;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 *
 * @author User
 */
public class SessionListener implements HttpSessionListener{

     @Override
    public void sessionCreated(HttpSessionEvent se) {
        //here session will be invalidated by container within 30 mins 
        //if there isn't any activity by user
        se.getSession().setMaxInactiveInterval(60*15);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        System.out.println("Session destroyed");
    }
    
}

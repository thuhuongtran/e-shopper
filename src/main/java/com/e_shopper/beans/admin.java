/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.beans;

/**
 *
 * @author User
 */
public class admin {
    private int admin_id;
    private String admin_name;
    private String admin_pass;
    private int admin_role;

    public admin() {
    }

    public admin(int admin_id, String admin_name, String admin_pass, int admin_role) {
        this.admin_id = admin_id;
        this.admin_name = admin_name;
        this.admin_pass = admin_pass;
        this.admin_role = admin_role;
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }

    public String getAdmin_name() {
        return admin_name;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    public String getAdmin_pass() {
        return admin_pass;
    }

    public void setAdmin_pass(String admin_pass) {
        this.admin_pass = admin_pass;
    }

    public int getAdmin_role() {
        return admin_role;
    }

    public void setAdmin_role(int admin_role) {
        this.admin_role = admin_role;
    }
    
    
}

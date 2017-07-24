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
public class customer {
    private int custom_id;
    private String custom_pass;
    private String custom_email;
    private String custom_name;
    private String custom_phone;
    private String custom_address;
    private String custom_province;
    private String custom_district;

    public String getCustom_province() {
        return custom_province;
    }

    public void setCustom_province(String custom_province) {
        this.custom_province = custom_province;
    }

    public String getCustom_district() {
        return custom_district;
    }

    public void setCustom_district(String custom_district) {
        this.custom_district = custom_district;
    }
    

    public customer() {
    }

    public customer(int custom_id, String custom_pass, String custom_email, String custom_name, String custom_phone, String custom_address, String custom_province, String custom_district) {
        this.custom_id = custom_id;
        this.custom_pass = custom_pass;
        this.custom_email = custom_email;
        this.custom_name = custom_name;
        this.custom_phone = custom_phone;
        this.custom_address = custom_address;
        this.custom_province = custom_province;
        this.custom_district = custom_district;
    }

    
    public int getCustom_id() {
        return custom_id;
    }

    public void setCustom_id(int custom_id) {
        this.custom_id = custom_id;
    }

    public String getCustom_pass() {
        return custom_pass;
    }

    public void setCustom_pass(String custom_pass) {
        this.custom_pass = custom_pass;
    }

    public String getCustom_email() {
        return custom_email;
    }

    public void setCustom_email(String custom_email) {
        this.custom_email = custom_email;
    }

    public String getCustom_name() {
        return custom_name;
    }

    public void setCustom_name(String custom_name) {
        this.custom_name = custom_name;
    }

    public String getCustom_phone() {
        return custom_phone;
    }

    public void setCustom_phone(String custom_phone) {
        this.custom_phone = custom_phone;
    }

    public String getCustom_address() {
        return custom_address;
    }

    public void setCustom_address(String custom_address) {
        this.custom_address = custom_address;
    }
    
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.beans;

import java.sql.Date;


/**
 *
 * @author User
 */
public class transaction {
    private int tran_id;
    private int order_id;
    private int custom_id;
    private int prod_id;
    private long tran_amount;
    private Date tran_day;
    private int tran_status;
    private String prod_name;
    private String prod_image_link;

    public String getProd_name() {
        return prod_name;
    }

    public void setProd_name(String prod_name) {
        this.prod_name = prod_name;
    }

    public String getProd_image_link() {
        return prod_image_link;
    }

    public void setProd_image_link(String prod_image_link) {
        this.prod_image_link = prod_image_link;
    }
    
    public transaction() {
    }

    public int getTran_id() {
        return tran_id;
    }

    public void setTran_id(int tran_id) {
        this.tran_id = tran_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getCustom_id() {
        return custom_id;
    }

    public void setCustom_id(int custom_id) {
        this.custom_id = custom_id;
    }

    public int getProd_id() {
        return prod_id;
    }

    public void setProd_id(int prod_id) {
        this.prod_id = prod_id;
    }

    public long getTran_amount() {
        return tran_amount;
    }

    public void setTran_amount(long tran_amount) {
        this.tran_amount = tran_amount;
    }

    public Date getTran_day() {
        return tran_day;
    }

    public void setTran_day(Date tran_day) {
        this.tran_day = tran_day;
    }

    public int getTran_status() {
        return tran_status;
    }

    public void setTran_status(int tran_status) {
        this.tran_status = tran_status;
    }
    
}

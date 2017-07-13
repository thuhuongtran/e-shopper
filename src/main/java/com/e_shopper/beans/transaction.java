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
    private String custom_name;
    private String custom_phone;
    private String custom_email;
    private long tran_amount;
    private Date tran_day;
    private int tran_status;

    public transaction() {
    }

    public transaction(int tran_id, int order_id, int custom_id, String custom_name, String custom_phone, String custom_email, long tran_amount, Date tran_day, int tran_status) {
        this.tran_id = tran_id;
        this.order_id = order_id;
        this.custom_id = custom_id;
        this.custom_name = custom_name;
        this.custom_phone = custom_phone;
        this.custom_email = custom_email;
        this.tran_amount = tran_amount;
        this.tran_day = tran_day;
        this.tran_status = tran_status;
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

    public String getCustom_email() {
        return custom_email;
    }

    public void setCustom_email(String custom_email) {
        this.custom_email = custom_email;
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

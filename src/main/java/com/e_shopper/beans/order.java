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
public class order {
    private int order_id;
    private int tran_id;
    private int pro_id;

    public int getTran_id() {
        return tran_id;
    }

    public void setTran_id(int tran_id) {
        this.tran_id = tran_id;
    }

    public int getPro_id() {
        return pro_id;
    }

    public void setPro_id(int pro_id) {
        this.pro_id = pro_id;
    }
    private int number;

    public order(int order_id, int tran_id, int pro_id, int number, long amount, int status) {
        this.order_id = order_id;
        this.tran_id = tran_id;
        this.pro_id = pro_id;
        this.number = number;
        this.amount = amount;
        this.status = status;
    }
    private long amount;
    private int status;

    public order() {
    }

    public order(int order_id, int number, long amount, int status) {
        this.order_id = order_id;
        this.number = number;
        this.amount = amount;
        this.status = status;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public long getAmount() {
        return amount;
    }

    public void setAmount(long amount) {
        this.amount = amount;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
}

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
public class product {

    private int pro_id;
    private String pro_name;
    private int pro_price;
    private String pro_img_link;
    private int pro_stock;
    private String pro_category;

    public String getPro_category() {
        return pro_category;
    }

    public void setPro_category(String pro_category) {
        this.pro_category = pro_category;
    }

    public product() {
    }

    public product(int pro_id, String pro_name, int pro_price, String pro_img_link, int pro_stock) {
        this.pro_id = pro_id;
        this.pro_name = pro_name;
        this.pro_price = pro_price;
        this.pro_img_link = pro_img_link;
        this.pro_stock = pro_stock;
    }

    public int getPro_id() {
        return pro_id;
    }

    public void setPro_id(int pro_id) {
        this.pro_id = pro_id;
    }

    public String getPro_name() {
        return pro_name;
    }

    public void setPro_name(String pro_name) {
        this.pro_name = pro_name;
    }

    public int getPro_price() {
        return pro_price;
    }

    public void setPro_price(int pro_price) {
        this.pro_price = pro_price;
    }

    public String getPro_img_link() {
        return pro_img_link;
    }

    public void setPro_img_link(String pro_img_link) {
        this.pro_img_link = pro_img_link;
    }

    public int getPro_stock() {
        return pro_stock;
    }

    public void setPro_stock(int pro_stock) {
        this.pro_stock = pro_stock;
    }

}

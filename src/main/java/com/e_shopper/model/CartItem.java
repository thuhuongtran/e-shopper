/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.model;

import com.e_shopper.beans.product;

/**
 *
 * @author User
 */
public class CartItem {
    private product prod;
    private int quantity;

    public CartItem() {
        this.quantity = 0 ;
    }

    public CartItem(product prod, int quantity) {
        this.prod = prod;
        this.quantity = quantity;
    }

    public product getProd() {
        return prod;
    }

    public void setProd(product prod) {
        this.prod = prod;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    public int getAmount(){
        return this.prod.getPro_price()*this.quantity;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.model;

import com.e_shopper.beans.customer;
import com.e_shopper.beans.product;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class UserCart {
    private int orderNum;
    private customer custom;
    private List<CartItem> cartLines = new ArrayList<CartItem>();

    public UserCart() {
    }

    public int getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    public customer getCustom() {
        return custom;
    }

    public void setCustom(customer custom) {
        this.custom = custom;
    }

    public List<CartItem> getCartLines() {
        return cartLines;
    }

    public void setCartLines(List<CartItem> cartLines) {
        this.cartLines = cartLines;
    }
    // add item in cart
    public void addItem(product prod, int quantity){
        CartItem lineItem = new CartItem(prod, quantity);
        this.cartLines.add(lineItem);
    }
    // find item from prod_id 
    private CartItem findItemfromID(int prod_id){
        for(CartItem item : this.cartLines){
            if(item.getProd().getPro_id()==prod_id){
                return item;
            }
        }
        return null;
    }
    // remove item from prod_id
    public void removeItem(int prod_id){
        CartItem item = findItemfromID(prod_id);
        if(item!=null){
            this.cartLines.remove(item);
        }
    }
    // amount total cost in user cart
    public long getAmountTotal(){
        long total = 0;
        return total;
    }
}

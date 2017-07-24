/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.model;

/**
 *
 * @author User
 */
public class ValidateAdmin {
    public int valiProdNum(String str){
        if(str.trim()==null||str.trim().equals(""))
            return 1;
        else if(str.trim().length()>10||!isNumber(str))
            return 2;
        else 
            return 0;
    }
    public boolean isNumber(String str){
        try{
            int num = Integer.parseInt(str);
        }
        catch(NumberFormatException ex){
            return false;
        }
        return true;
    }
}

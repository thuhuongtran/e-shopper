/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.model;

import java.io.File;

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
    // validate file
    public int valiFile(File uploadFile){
        if(uploadFile.length()==0)
            return 1;
        else
            return 0;
    }
}

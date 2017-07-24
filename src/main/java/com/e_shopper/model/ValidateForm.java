/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.model;

import java.util.regex.Pattern;

/**
 *
 * @author User
 */
public class ValidateForm {
    private Pattern pattern;
    public int validateName(String name){
        if(name.trim()==null||name.trim().equals(""))
            return 1;
        else if(name.trim().length()<6||name.trim().length()>=50)
            return 2;
        else 
            return 0;
    }
    public int validatePass(String pass){
        if(pass.trim()==null||pass.trim().equals(""))
            return 1;
        else if(pass.trim().length()<6||pass.trim().length()>=50)
            return 2;
        else 
            return 0;
    }
    public int validateEmail(String email){
        String email_pattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
		+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        pattern = Pattern.compile(email_pattern);

        if(email.trim()==null||email.trim().equals(""))
            return 1;
        else if(email.trim().length()<6||email.trim().length()>=60)
            return 2;
        else if(pattern.matcher(email.trim()).matches())
            return 0;
        else 
            return 1;
    }
    public int validateMobile(String mobile){
        if(mobile.trim()==null||mobile.trim().equals(""))
            return 1;
        else if(mobile.trim().length()<9||mobile.trim().length()>=15)
            return 2;
        else 
            return 0;
    }
    public int validateAddress(String address){
        if(address.trim()==null||address.trim().equals(""))
            return 1;
        else if(address.trim().length()<8||address.trim().length()>=100)
            return 2;
        else 
            return 0;
    }
}

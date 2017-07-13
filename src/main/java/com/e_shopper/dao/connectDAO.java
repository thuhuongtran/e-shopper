/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.dao;

import com.e_shopper.beans.product;
import java.util.List;

/**
 *
 * @author User
 */
public interface connectDAO {
    
    public List<product> getProList();
    public product getProd(int id);
}

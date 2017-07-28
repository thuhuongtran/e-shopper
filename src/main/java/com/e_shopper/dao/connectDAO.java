/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.dao;

import com.e_shopper.beans.admin;
import com.e_shopper.beans.customer;
import com.e_shopper.beans.order;
import com.e_shopper.beans.product;
import com.e_shopper.beans.transaction;
import java.util.List;

/**
 *
 * @author User
 */
public interface connectDAO {
    
    public List<product> getProList();
    public product getProd(int id);
    public customer getCustom(String email);
    public customer getCustomer(int custom_id);
    public List<transaction> getTranList(int custom_id);
    public void insertCustom(String name, String email,String mobile, String pass, String address, String province, String district);
    public void insertOrder(int prod_id, int number, int amount, int custom_id, String ord_date);
    public List<order> getOderList();
    public void updateStatusOrd(int ord_id);
    public void insertTran(int ord_id, int cus_id, int amount, String tran_date, int prod_id, String prod_name, String prod_img_link);
    public void deleteOrd(int ord_id);
    public void updateProd(int prod_id, String prod_name, int prod_price, String prod_img_link, int prod_stock);
    public void deleteProd(int pro_id);
    public void insertProd(String pro_name, int pro_price,String pro_img_link, int pro_stock);
    public admin getAd(String name);
    public List<product> getProdfromSearch(String inStr, List<product> prodLi);
}

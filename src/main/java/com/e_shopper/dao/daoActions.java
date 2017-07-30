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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author User
 */
public class daoActions implements connectDAO {

    private final JdbcTemplate jdbcTemplate;

    public daoActions(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    //get product list
    @Override
    public List<product> getProList() {
        String sql = "SELECT * FROM product";
        List<product> proList = jdbcTemplate.query(sql, (ResultSet rs, int i) -> {
            product pro = new product();
            pro.setPro_id(rs.getInt("product_id"));
            pro.setPro_name(rs.getString("product_name"));
            pro.setPro_price(rs.getInt("product_price"));
            pro.setPro_img_link(rs.getString("product_image_link"));
            pro.setPro_stock(rs.getInt("product_stock"));
            pro.setPro_category(rs.getString("product_category"));

            return pro;
        });
        return proList;
    }

    @Override
    public List<product> getProListMan() {
        String Men = "Men";
        String sql = "SELECT * FROM product WHERE product_category = '" + Men + "'";
        List<product> proListMan = jdbcTemplate.query(sql, (ResultSet rs, int i) -> {
            product pro = new product();
            pro.setPro_id(rs.getInt("product_id"));
            pro.setPro_name(rs.getString("product_name"));
            pro.setPro_price(rs.getInt("product_price"));
            pro.setPro_img_link(rs.getString("product_image_link"));
            pro.setPro_stock(rs.getInt("product_stock"));
            pro.setPro_category(rs.getString("product_category"));

            return pro;
        });
        return proListMan;
    }

    // get product from its id
    @Override
    public product getProd(int id) {
        String sql = "SELECT * FROM product WHERE product_id =" + id;
        return jdbcTemplate.query(sql, new ResultSetExtractor<product>() {
            @Override
            public product extractData(ResultSet rs) throws SQLException, DataAccessException {

                if (rs.next()) {
                    product pro = new product();
                    pro.setPro_id(rs.getInt("product_id"));
                    pro.setPro_name(rs.getString("product_name"));
                    pro.setPro_price(rs.getInt("product_price"));
                    pro.setPro_img_link(rs.getString("product_image_link"));
                    pro.setPro_stock(rs.getInt("product_stock"));
                    return pro;
                }
                return null;
            }
        });

    }

    // get customer from email
    @Override
    public customer getCustom(String email) {
        String sql = "SELECT * FROM customer WHERE custom_email = '" + email + "'";
        return jdbcTemplate.query(sql, new ResultSetExtractor<customer>() {
            @Override
            public customer extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {
                    customer custom = new customer();
                    custom.setCustom_id(rs.getInt("custom_id"));
                    custom.setCustom_pass(rs.getString("custom_pass"));
                    custom.setCustom_email(rs.getString("custom_email"));
                    custom.setCustom_name(rs.getString("custom_name"));
                    custom.setCustom_phone(rs.getString("custom_phone"));
                    custom.setCustom_address(rs.getString("custom_address"));
                    custom.setCustom_province(rs.getString("custom_province"));
                    custom.setCustom_district(rs.getString("custom_district"));

                    return custom;
                }
                return null;
            }
        });
    }

    // get customer from custom_id
    @Override
    public customer getCustomer(int custom_id) {
        String sql = "SELECT * FROM customer WHERE custom_id =" + custom_id;
        return jdbcTemplate.query(sql, new ResultSetExtractor<customer>() {
            @Override
            public customer extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {
                    customer custom = new customer();
                    custom.setCustom_id(rs.getInt("custom_id"));
                    custom.setCustom_pass(rs.getString("custom_pass"));
                    custom.setCustom_email(rs.getString("custom_email"));
                    custom.setCustom_name(rs.getString("custom_name"));
                    custom.setCustom_phone(rs.getString("custom_phone"));
                    custom.setCustom_address(rs.getString("custom_address"));
                    custom.setCustom_province(rs.getString("custom_province"));
                    custom.setCustom_district(rs.getString("custom_district"));

                    return custom;
                }
                return null;
            }
        });
    }
    // get transaction list from custom_id

    @Override
    public List<transaction> getTranList(int custom_id) {
        String sql = "SELECT * FROM transaction WHERE custom_id =" + custom_id;
        List<transaction> tranList = jdbcTemplate.query(sql, (ResultSet rs, int i) -> {
            transaction tran = new transaction();
            tran.setTran_id(rs.getInt("transaction_id"));
            tran.setOrder_id(rs.getInt("order_id"));
            tran.setCustom_id(rs.getInt("custom_id"));
            tran.setTran_amount(rs.getInt("amount"));
            tran.setTran_day(rs.getDate("created"));
            tran.setTran_status(rs.getInt("status"));
            tran.setProd_id(rs.getInt("product_id"));
            tran.setProd_name(rs.getString("prod_name"));
            tran.setProd_image_link(rs.getString("prod_img_link"));

            return tran;
        });
        return tranList;
    }

    // insert custom in customer table
    @Override
    public void insertCustom(String name, String email, String mobile, String pass, String address, String province, String district) {
        String sql = "INSERT INTO customer (custom_pass, custom_email, custom_name, custom_phone,custom_address,custom_province,custom_district) \n"
                + "VALUES ('" + pass + "','" + email + "','" + name + "','" + mobile + "','" + address + "','" + province + "','" + district + "');";
        jdbcTemplate.update(sql);
    }

    //insert order in order table ----BUG HERE
    @Override
    public void insertOrder(int prod_id, int number, int amount, int custom_id, String ord_date) {
        String sql = "INSERT INTO `order`(`product_id`, `number`, `amount`, `custom_id`,`Date`,`ord_status`)\n"
                + "VALUES (" + prod_id + "," + number + "," + amount + "," + custom_id + ",'" + ord_date + "',0)";
        jdbcTemplate.update(sql);
    }
    // get unprocessed order from status
    // status =0 -->unprocessed
    // status = 1 --> processed

    @Override
    public List<order> getOderList() {
        String sql = "SELECT `order`.`order_id`,`customer`.`custom_id`, `customer`.`custom_name`,"
                + " `customer`.`custom_phone`, `customer`.`custom_email`,"
                + " `customer`.`custom_address`, `customer`.`custom_district`,"
                + " `customer`.`custom_province`, `product`.`product_id`,`product`.`product_image_link`,"
                + " `product`.`product_name`, `order`.`number`, `order`.`amount`,"
                + "`order`.`Date` "
                + "FROM `order` INNER JOIN `customer` "
                + "ON `order`.`custom_id`=`customer`.`custom_id` "
                + "INNER JOIN `product` "
                + "ON `order`.`product_id`= `product`.`product_id` "
                + "WHERE `order`.`ord_status` =0 "
                + "ORDER BY `order`.`order_id`";
        List<order> orderList = jdbcTemplate.query(sql, (ResultSet rs, int i) -> {
            order ord = new order();
            ord.setOrd_id(rs.getInt("order_id"));
            ord.setCus_id(rs.getInt("custom_id"));
            ord.setCus_name(rs.getString("custom_name"));
            ord.setCus_phone(rs.getString("custom_phone"));
            ord.setCus_email(rs.getString("custom_email"));
            ord.setCus_addr(rs.getString("custom_address") + ", " + rs.getString("custom_district") + ", " + rs.getString("custom_province"));
            ord.setProd_id(rs.getInt("product_id"));
            ord.setProd_img_link(rs.getString("product_image_link"));
            ord.setProd_name(rs.getString("product_name"));
            ord.setQuantity(rs.getInt("number"));
            ord.setAmount(rs.getInt("amount"));
            ord.setOrd_date(rs.getString("Date"));
            return ord;
        });
        return orderList;
    }

    // update table order set status = 1 from ord_id
    @Override
    public void updateStatusOrd(int ord_id) {
        String sql = "UPDATE `order` SET `ord_status` = 1 WHERE `order_id` =" + ord_id;
        jdbcTemplate.update(sql);
    }
// insert in transaction table

    @Override
    public void insertTran(int ord_id, int cus_id, int amount, String tran_date, int prod_id, String prod_name, String prod_img_link) {
        String sql = "INSERT INTO `transaction` (`order_id`,`custom_id`,`amount`,`created`,`status`,`product_id`,`prod_name`,`prod_img_link`)"
                + "VALUES (" + ord_id + "," + cus_id + "," + amount + ",'" + tran_date + "',0," + prod_id + ",'" + prod_name + "','" + prod_img_link + "')";
        jdbcTemplate.update(sql);
    }
// delete order 

    @Override
    public void deleteOrd(int ord_id) {
        String sql = "DELETE FROM `order` WHERE `order_id`=" + ord_id;
        jdbcTemplate.update(sql);
    }
// update product table 

    @Override
    public void updateProd(int prod_id, String prod_name, int prod_price, String prod_img_link, int prod_stock) {
        String sql = "UPDATE `product` SET `product_name`='" + prod_name + "',`product_price`=" + prod_price + ","
                + "`product_image_link`='" + prod_img_link + "',`product_stock`=" + prod_stock + " WHERE `product_id`=" + prod_id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void deleteProd(int pro_id) {
        String sql = "DELETE FROM `product` WHERE `product_id` =" + pro_id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void insertProd(String pro_name, int pro_price, String pro_img_link, int pro_stock) {
        String sql = "INSERT INTO `product` (`product_name`,`product_price`,`product_image_link`,`product_stock`,`product_category`)"
                + "VALUES ('" + pro_name + "'," + pro_price + ",'" + pro_img_link + "'," + pro_stock + ",'')";
        jdbcTemplate.update(sql);
    }

    @Override
    public admin getAd(String name) {
        String sql = "SELECT * FROM `admin` WHERE `admin_name` ='" + name + "'";
        return jdbcTemplate.query(sql, new ResultSetExtractor<admin>() {
            @Override
            public admin extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {
                    admin ad = new admin();
                    ad.setAdmin_id(rs.getInt("admin_id"));
                    ad.setAdmin_name(rs.getString("admin_name"));
                    ad.setAdmin_pass(rs.getString("admin_pass"));
                    return ad;
                }
                return null;
            }
        });
    }
// find product list from input string 

    @Override
    public List<product> getProdfromSearch(String inStr, List<product> prodLi) {
        String sql = "SELECT * FROM `product` WHERE `product_name` LIKE '%" + inStr + "%'";
        List<product> prodList = jdbcTemplate.query(sql, (ResultSet rs, int i) -> {
            product pro = new product();
            pro.setPro_id(rs.getInt("product_id"));
            pro.setPro_name(rs.getString("product_name"));
            pro.setPro_price(rs.getInt("product_price"));
            pro.setPro_img_link(rs.getString("product_image_link"));
            pro.setPro_stock(rs.getInt("product_stock"));

            prodLi.add(pro);
            return pro;
        });
        return prodList;
    }
// get unprocessed order from date

    @Override
    public List<order> getOrdfromSear(String inStr) {
        String sql = "SELECT `order`.`order_id`,`customer`.`custom_id`, `customer`.`custom_name`,"
                + " `customer`.`custom_phone`, `customer`.`custom_email`,"
                + " `customer`.`custom_address`, `customer`.`custom_district`,"
                + " `customer`.`custom_province`, `product`.`product_id`,`product`.`product_image_link`,"
                + " `product`.`product_name`, `order`.`number`, `order`.`amount`,"
                + "`order`.`Date` "
                + "FROM `order` INNER JOIN `customer` "
                + "ON `order`.`custom_id`=`customer`.`custom_id` "
                + "INNER JOIN `product` "
                + "ON `order`.`product_id`= `product`.`product_id` "
                + "WHERE `order`.`Date`='" + inStr + "'"
                + "ORDER BY `order`.`order_id`";
        List<order> orderList = jdbcTemplate.query(sql, (ResultSet rs, int i) -> {
            order ord = new order();
            ord.setOrd_id(rs.getInt("order_id"));
            ord.setCus_id(rs.getInt("custom_id"));
            ord.setCus_name(rs.getString("custom_name"));
            ord.setCus_phone(rs.getString("custom_phone"));
            ord.setCus_email(rs.getString("custom_email"));
            ord.setCus_addr(rs.getString("custom_address") + ", " + rs.getString("custom_district") + ", " + rs.getString("custom_province"));
            ord.setProd_id(rs.getInt("product_id"));
            ord.setProd_img_link(rs.getString("product_image_link"));
            ord.setProd_name(rs.getString("product_name"));
            ord.setQuantity(rs.getInt("number"));
            ord.setAmount(rs.getInt("amount"));
            ord.setOrd_date(rs.getString("Date"));

            return ord;
        });
        return orderList;
    }
            @Override
    public List<transaction> getTranList() {
        String sql = "SELECT * FROM `transaction` WHERE `status`=0 ORDER BY created DESC";
        List<transaction> tranList = jdbcTemplate.query(sql, (ResultSet rs, int i) -> {
            transaction tran = new transaction();
            tran.setTran_id(rs.getInt("transaction_id"));
            tran.setOrder_id(rs.getInt("order_id"));
            tran.setCustom_id(rs.getInt("custom_id"));
            tran.setTran_amount(rs.getInt("amount"));
            tran.setTran_day(rs.getDate("created"));
            tran.setTran_status(rs.getInt("status"));
            tran.setProd_id(rs.getInt("product_id"));
            tran.setProd_name(rs.getString("prod_name"));
            tran.setProd_image_link(rs.getString("prod_img_link"));

            return tran;
        });
        return tranList;
    }

}

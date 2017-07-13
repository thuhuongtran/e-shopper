/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.dao;

import com.e_shopper.beans.product;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author User
 */
public class GetData implements connectDAO {

    private final JdbcTemplate jdbcTemplate;

    public GetData(DataSource dataSource) {
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

            return pro;
        });
        return proList;
    }

    @Override
    public product getProd(int id) {
        String sql = "SELECT * FROM product WHERE product_id ="+id;
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

}

package com.e_shopper.controller;

import com.e_shopper.beans.product;
import com.e_shopper.dao.connectDAO;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/")
public class MainController {

    @Autowired
    private connectDAO dao;

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String homePage(ModelMap mm) {

        return "homepage";
    }
    // login

    @RequestMapping(value = "/signin", method = RequestMethod.GET)
    public String Login(ModelMap mm) {
        return "signin";
    }
    // register

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String Register(ModelMap mm) {
        return "signup";
    }

    // get List product
    @RequestMapping(value = "/productList", method = RequestMethod.GET)
    public String getProductList(ModelMap mm) throws ClassNotFoundException, SQLException {
        List<product> prodList = dao.getProList();
        mm.put("proList", prodList);
        return "productList";
    }

    // get product detail
    @RequestMapping(value = "/productDetail", method = RequestMethod.GET, params = {"id"})
    public String getProductDetail(ModelMap mm, @RequestParam(value ="id") int id) {
        // get product from its id
        product prod = dao.getProd(id);
        mm.put("prod", prod);
        return "productDetail";
    }

    // check out
    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public String getCheckout(ModelMap mm) {
        return "checkout";
    }

    // cart
    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String getCart(ModelMap mm) {
        return "cart";
    }
}

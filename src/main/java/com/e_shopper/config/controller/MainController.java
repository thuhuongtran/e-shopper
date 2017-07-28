package com.e_shopper.config.controller;

import com.e_shopper.beans.customer;
import com.e_shopper.beans.product;
import com.e_shopper.beans.transaction;
import com.e_shopper.dao.connectDAO;
import com.e_shopper.model.CartItem;
import com.e_shopper.model.UserCart;
import com.e_shopper.model.ValidateForm;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
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
    // process login form

    @RequestMapping(value = "/signin", method = RequestMethod.POST, params = {"email", "pass"})
    public String LoginProcess(ModelMap mm, HttpSession session, @RequestParam(value = "email") String email,
            @RequestParam(value = "pass") String pass) {
        ValidateForm validate = new ValidateForm();
        if (validate.validatePass(pass) > 0 || validate.validateEmail(email) > 0) {
            if (validate.validateEmail(email) > 0) {
                mm.put("emailVali", validate.validateEmail(email));
            } else {
                mm.put("email", email);
            }
            if (validate.validatePass(pass) > 0) {
                mm.put("passVali", validate.validatePass(pass));
            }
            return "signin";
        } else {
            // check if custom is in data table
            // find custom from email
            if (dao.getCustom(email) != null) {
                customer custom = dao.getCustom(email);
                // then check if custom pass is true?
                if (pass.equals(custom.getCustom_pass())) {
                    // setAttribute custom 
                    session.setAttribute("custom", dao.getCustom(email));
                    return "cart";
                } else {
                    mm.put("passVali", 3);
                }
            }
            return "signin";
        }
    }

    // sign out
    @RequestMapping(value = "/signout", method = RequestMethod.GET)
    public String SignOut(ModelMap mm, HttpSession session) {
        session.setAttribute("custom", null);
        session.setAttribute("cart", null);
        return "homepage";
    }

    //my order
    @RequestMapping(value = "/myorder", method = RequestMethod.GET)
    public String MyOder(ModelMap mm, HttpSession session) {
        if (session.getAttribute("custom") == null) {
            return "signin";
        } else {
            customer custom = (customer) session.getAttribute("custom");
            // then get completed transaction from custom id
            List<transaction> tranList = dao.getTranList(custom.getCustom_id());
            mm.put("tranList", tranList);
            return "myorder";
        }
    }
    // register

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String Register(ModelMap mm) {
        return "signup";
    }
    // process register form

    @RequestMapping(value = "/signup", method = RequestMethod.POST, params = {"name", "email", "mobile", "pass"})
    public String RegisterProcess(ModelMap mm, HttpSession session,
            @RequestParam(value = "name") String name,
            @RequestParam(value = "email") String email,
            @RequestParam(value = "mobile") String mobile,
            @RequestParam(value = "pass") String pass) {
        ValidateForm validate = new ValidateForm();
        if (validate.validateName(name) > 0 || validate.validateEmail(email) > 0
                || validate.validateMobile(mobile) > 0 || validate.validatePass(pass) > 0) {
            if (validate.validateName(name) > 0) {
                mm.put("nameVali", validate.validateName(name));
            } else {
                mm.put("name", name);
            }
            if (validate.validateEmail(email) > 0) {
                mm.put("emailVali", validate.validateEmail(email));
            } else {
                mm.put("email", email);
            }
            if (validate.validateMobile(mobile) > 0) {
                mm.put("mobileVali", validate.validateMobile(mobile));
            } else {
                mm.put("mobile", mobile);
            }
            if (validate.validatePass(pass) > 0) {
                mm.put("passVali", validate.validatePass(pass));
            }
            return "signup";
        } else {
            //insert custom in database
            dao.insertCustom(name, email, mobile, pass, "", "", "");
            // set session custom attribute
            session.setAttribute("custom", dao.getCustom(email));
            return "successSignup";
        }

    }

    // get List product
    @RequestMapping(value = "/productList", method = RequestMethod.GET)
    public String getProductList(ModelMap mm) throws ClassNotFoundException, SQLException {
        List<product> prodList = dao.getProList();
        mm.put("proList", prodList);
        return "productList";
    }
    
    // get List product
    @RequestMapping(value = "/productList", method = RequestMethod.POST)
    public String productList(ModelMap mm) throws ClassNotFoundException, SQLException {
        List<product> prodList = dao.getProList();
        mm.put("proList", prodList);
        return "productList";
    }
    // get product detail
    @RequestMapping(value = "/productDetail", method = RequestMethod.GET, params = {"id"})
    public String getProductDetail(ModelMap mm, @RequestParam(value = "id") int id) {
        // get product from its id
        product prod = dao.getProd(id);
        mm.put("prod", prod);
        return "productDetail";
    }

    // add product to cart
    @RequestMapping(value = "/cart", method = RequestMethod.POST, params = {"prod_id", "quantity"})
    public String getCart(ModelMap mm, @RequestParam(value = "prod_id") int id, @RequestParam(value = "quantity") String quantity, HttpSession session) {

        // get product from its id
        product prod = dao.getProd(id);
        // add product to cart
        if (session.getAttribute("cart") == null) {
            List<CartItem> itemList = new ArrayList<>();
            itemList.add(new CartItem(prod, Integer.parseInt(quantity)));
            session.setAttribute("cart", itemList);
            session.setAttribute("amountTotal", new UserCart(itemList).getAmountTotal());
        } else {
            List<CartItem> itemList = (List<CartItem>) session.getAttribute("cart");
            itemList.add(new CartItem(prod, Integer.parseInt(quantity)));
            session.setAttribute("cart", itemList);
            session.setAttribute("amountTotal", new UserCart(itemList).getAmountTotal());
        }
        return "cart";
    }

    // cart
    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String getCart(ModelMap mm, HttpSession session) {
        if (session.getAttribute("cart") == null) {
            session.setAttribute("amountTotal", 0);
        }
        return "cart";
    }

    // cart remove + checkout
    @RequestMapping(value = "/cart", method = RequestMethod.POST, params = {"remove"})
    public String cartAction(ModelMap mm, HttpSession session, @RequestParam(value = "remove") String check_remove) {
        if (session.getAttribute("cart") != null) {
            if (check_remove != null && !check_remove.equals("")) {
                // remove item from cart
                List<CartItem> items = (List<CartItem>) session.getAttribute("cart");
                UserCart userCart = new UserCart(items);
                CartItem item = userCart.findItemfromID(Integer.parseInt(check_remove));// BUG HERE
                items.remove(item);
                // set attribute
                session.setAttribute("cart", items);
                session.setAttribute("amountTotal", userCart.getAmountTotal());
            }
        }
        return "cart";
    }

    // check out
    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public String getCheckout(ModelMap mm, HttpSession session) {
        if (session.getAttribute("custom") != null) {
            customer custom = (customer) session.getAttribute("custom");
            mm.put("name", custom.getCustom_name());
            mm.put("email", custom.getCustom_email());
            mm.put("mobile", custom.getCustom_phone());
        }
        return "checkout";
    }

    // check out
    @RequestMapping(value = "/checkout", method = RequestMethod.POST, params = {"name", "email", "mobile", "province", "district", "address"})
    public String CheckOut(ModelMap mm, HttpSession session, @RequestParam(value = "name") String name,
            @RequestParam(value = "email") String email,
            @RequestParam(value = "mobile") String mobile,
            @RequestParam(value = "province") String province,
            @RequestParam(value = "district") String district,
            @RequestParam(value = "address") String address) {

        ValidateForm validate = new ValidateForm();
        if (validate.validateName(name) > 0 || validate.validateEmail(email) > 0 || validate.validateMobile(mobile) > 0
                || province == null || province.equals("") || district == null || district.equals("")
                || validate.validateAddress(address) > 0) {
            if (validate.validateName(name) > 0) {
                mm.put("nameVali", validate.validateName(name));
            } else {
                mm.put("name", name);
            }
            if (validate.validateEmail(email) > 0) {
                mm.put("emailVali", validate.validateEmail(email));
            } else {
                mm.put("email", email);
            }
            if (validate.validateMobile(mobile) > 0) {
                mm.put("mobileVali", validate.validateMobile(mobile));
            } else {
                mm.put("mobile", mobile);
            }
            if (province == null || province.equals("")) {
                mm.put("province", "");
            }
            if (district == null || district.equals("")) {
                mm.put("district", "");
            }
            if (validate.validateAddress(address) > 0) {
                mm.put("addressVali", validate.validateAddress(address));
            } else {
                mm.put("address", address);
            }
            return "checkout";
        } else {
           // get current date
           Date date = new Date();
           SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
            
            // get items in cart from session
            if (session.getAttribute("cart") != null) {
            //insert custom in database
            dao.insertCustom(name, email, mobile, "", address, province, district);

            customer custom = dao.getCustom(email);
            // set session custom attribute
            session.setAttribute("custom", custom);
            
                List<CartItem> itemList = (List<CartItem>) session.getAttribute("cart");
                for (int i = 0; i < itemList.size(); i++) {
                    // add order in database
                    dao.insertOrder(itemList.get(i).getProd().getPro_id(),
                            itemList.get(i).getQuantity(),
                            itemList.get(i).getAmount(),
                            custom.getCustom_id(),dateformat.format(date));
                }
                return "successCheckout";
            } else {
                return "productList";
            }

        }
    }
    // search product
    @RequestMapping(value ="/search_prod", method = RequestMethod.POST, params = {"inStr"})
    public String search_prod(ModelMap mm, @RequestParam(value = "inStr") String in_str){
        // get input string
        // process input string 
        ValidateForm vali = new ValidateForm();
        String[] words = vali.sepString(in_str);
        // get data through processed input string
        List prodLi = new ArrayList<>();
        for(int i=0;i<words.length;i++){
            dao.getProdfromSearch(words[i], prodLi);
        }
        mm.put("proList", prodLi);
        // return productlist
        return "productList";
    }

}

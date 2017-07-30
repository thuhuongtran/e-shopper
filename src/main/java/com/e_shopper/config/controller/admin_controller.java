/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.config.controller;

import com.e_shopper.beans.admin;
import com.e_shopper.beans.order;
import com.e_shopper.beans.product;
import com.e_shopper.beans.transaction;
import com.e_shopper.dao.connectDAO;
import com.e_shopper.model.FileProcess;
import com.e_shopper.model.ValidateAdmin;
import com.e_shopper.model.ValidateForm;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author User
 */
@Controller
@RequestMapping(value = "/admin")
public class admin_controller {
    
    @Autowired
    private connectDAO dao_admin;
    
    @RequestMapping(value = {"/", "", "/dashboard"}, method = RequestMethod.GET)
    public String getDashboard(ModelMap mm, HttpSession session) {
        if (session.getAttribute("admin") == null) {
            return "signinAd";
        } else {
            admin ad = (admin) session.getAttribute("admin");
            mm.put("ad_name", ad.getAdmin_name());
            // get transactions which are uncompleted
            if (session.getAttribute("tranList") != null) {
                List<transaction> tranList = (List<transaction>) session.getAttribute("tranList");
                mm.put("tranList", tranList);
                session.setAttribute("tranList", tranList);
            } else {
                List<transaction> tranList = dao_admin.getTranList();
                mm.put("tranList", tranList);
                session.setAttribute("tranList", tranList);
            }
            return "dashboard";
        }
        
    }
    
    @RequestMapping(value = {"/signinAd"}, method = RequestMethod.POST, params = {"ad_name", "ad_pass"})
    public String signin(ModelMap mm, HttpSession session,
            @RequestParam(value = "ad_name") String ad_name, @RequestParam(value = "ad_pass") String ad_pass) {
        ValidateForm validate = new ValidateForm();
        if (validate.validateName(ad_name) == 1 || validate.validatePass(ad_pass) == 1) {
            if (validate.validateName(ad_name) == 1) {
                mm.put("nameVali", validate.validateName(ad_name));
            }
            if (validate.validatePass(ad_pass) == 1) {
                mm.put("passVali", validate.validatePass(ad_pass));
            }
            return "signinAd";
        } else {
            if (dao_admin.getAd(ad_name) != null) {
                admin ad = dao_admin.getAd(ad_name);
                if (ad_pass.equals(ad.getAdmin_pass())) {
                    session.setAttribute("admin", ad);
                    session.setAttribute("ad_name", ad_name);
                    return "redirect:dashboard";
                } else {
                    mm.put("errorLog", 1);
                }
            }
            return "signinAd";
        }
        
    }
    
    @RequestMapping(value = "/orderbooking", method = RequestMethod.GET)
    public String getOrderBooking(ModelMap mm, HttpSession session) {
        if (session.getAttribute("admin") != null) {
            // get all unprocessed orders 
            List<order> orderList = dao_admin.getOderList();
            mm.put("orderList", orderList);
            session.setAttribute("orderList", orderList);
            return "orderbooking";
        } else {
            return "signinAd";
        }
        
    }
    
    @RequestMapping(value = "/confirmOder", method = RequestMethod.GET, params = {"ord_id"})
    public String confirmOrder(ModelMap mm, HttpSession session, @RequestParam(value = "ord_id") int ord_id) {
        if (session.getAttribute("admin") != null) {
            List<order> ordList = (List<order>) session.getAttribute("orderList");
            if (ordList != null) {
                // set order status to 1
                dao_admin.updateStatusOrd(ord_id);
                // add in transaction
                for (int i = 0; i < ordList.size(); i++) {
                    dao_admin.insertTran(ordList.get(i).getOrd_id(),
                            ordList.get(i).getCus_id(),
                            ordList.get(i).getAmount(),
                            ordList.get(i).getOrd_date(),
                            ordList.get(i).getProd_id(),
                            ordList.get(i).getProd_name(),
                            ordList.get(i).getProd_img_link());
                }
                mm.put("succConf", 1);
            }
            return "successProcess";
        } else {
            return "signinAd";
        }
        
    }
    
    @RequestMapping(value = "/declineOrder", method = RequestMethod.GET, params = {"ord_id"})
    public String declineOrder(ModelMap mm, HttpSession session, @RequestParam(value = "ord_id") int ord_id) {
        if (session.getAttribute("admin") != null) {
            List<order> ordList = (List<order>) session.getAttribute("orderList");
            if (ordList != null) {
                // delete order where ord_id
                dao_admin.deleteOrd(ord_id);
                mm.put("succDecl", 1);
            }
            return "successProcess";
        } else {
            return "signinAd";
        }
        
    }
    
    @RequestMapping(value = "/prodListAd", method = RequestMethod.GET)
    public String getProList(ModelMap mm, HttpSession session) {
        if (session.getAttribute("admin") != null) {
            List<product> prodList = dao_admin.getProList();
            mm.put("proList", prodList);
            return "manageProd";
        } else {
            return "signinAd";
        }
    }
    
    @RequestMapping(value = "/editProd", method = RequestMethod.GET, params = {"pro_id"})
    public String editProd(ModelMap mm, HttpSession session, @RequestParam(value = "pro_id") int pro_id) {
        if (session.getAttribute("admin") != null) {
            // get product from its id
            product prod = dao_admin.getProd(pro_id);
            mm.put("pro_id", prod.getPro_id());
            mm.put("pro_name", prod.getPro_name());
            mm.put("pro_price", prod.getPro_price());
            mm.put("pro_stock", prod.getPro_stock());
            mm.put("pro_img_link", prod.getPro_img_link());
            return "editProd";
        } else {
            return "signinAd";
        }
    }
    
    @RequestMapping(value = "/editProd", method = RequestMethod.POST)
    public String editProduct(ModelMap mm, HttpSession session, @RequestParam(value = "pro_id") int pro_id,
            @RequestParam(value = "prod_name") String pro_name,
            @RequestParam(value = "prod_price") String pro_price,
            @RequestParam(value = "prod_stock") String pro_stock,
            @RequestParam(value = "pro_img_link") MultipartFile imgFile) throws IOException {
        if (session.getAttribute("admin") != null) {
            // validate form
            ValidateAdmin valiAd = new ValidateAdmin();
            ValidateForm valiForm = new ValidateForm();
            FileProcess fileProcess = new FileProcess();
            
            String pro_img_link = null;
            if (!imgFile.isEmpty()) {
                pro_img_link = fileProcess.processFile(imgFile);
                System.out.println("link image " + pro_img_link);
            }
            if (valiForm.validateName(pro_name) > 0 || valiAd.valiProdNum(pro_price) > 0
                    || valiAd.valiProdNum(pro_stock) > 0
                    || valiForm.validateAddress(pro_img_link) > 0 || pro_img_link == null) {
                if (valiForm.validateName(pro_name) > 0) {
                    mm.put("proNamVali", valiForm.validateName(pro_name));
                } else {
                    mm.put("pro_name", pro_name);
                }
                if (valiAd.valiProdNum(pro_price) > 0) {
                    mm.put("proPricVali", valiAd.valiProdNum(pro_price));
                } else {
                    mm.put("pro_price", pro_price);
                }
                if (valiAd.valiProdNum(pro_stock) > 0) {
                    mm.put("proStoVali", valiAd.valiProdNum(pro_stock));
                } else {
                    mm.put("pro_stock", pro_stock);
                }
                if (valiForm.validateAddress(pro_img_link) > 0 || pro_img_link == null) {
                    mm.put("proImgLinkVali", valiForm.validateAddress(pro_img_link));
                } else {
                    mm.put("pro_img_link", pro_img_link);
                }
                mm.put("pro_id", pro_id);
                return "editProd";
            } else {
                // update table data
                dao_admin.updateProd(pro_id, pro_name, Integer.parseInt(pro_price), pro_img_link, Integer.parseInt(pro_stock));
                // send view
                mm.put("succEdit", 1);
                return "successProcess";
            }
        } else {
            return "signinAd";
        }
        
    }

    // delete product
    @RequestMapping(value = "/deleteProd", method = RequestMethod.GET, params = {"pro_id"})
    public String deletePro(ModelMap mm, HttpSession session, @RequestParam(value = "pro_id") int pro_id) {
        if (session.getAttribute("admin") != null) {
            // delete in database
            dao_admin.deleteProd(pro_id);
            mm.put("succDel", 1);
            return "successProcess";
        } else {
            return "signinAd";
        }
    }
    // add new product

    @RequestMapping(value = "/addNewProd", method = RequestMethod.GET)
    public String addProd(ModelMap mm, HttpSession session) {
        if (session.getAttribute("admin") != null) {
            return "addNewProduct";
        } else {
            return "signinAd";
        }
    }
    
    @RequestMapping(value = "/addNewProd", method = RequestMethod.POST)
    public String addProduct(ModelMap mm, HttpSession session,
            @RequestParam(value = "prod_name") String pro_name,
            @RequestParam(value = "prod_price") String pro_price,
            @RequestParam(value = "prod_stock") String pro_stock,
            @RequestParam(value = "prod_img_link") MultipartFile imgFile) throws IOException {
        if (session.getAttribute("admin") != null) {
            ValidateAdmin valiAd = new ValidateAdmin();
            ValidateForm valiForm = new ValidateForm();
            FileProcess fileProcess = new FileProcess();
            String prodimgLink = null;
            if (imgFile != null) {
                prodimgLink = fileProcess.processFile(imgFile);
                System.out.println(prodimgLink);
            }
            // validate form

            if (valiForm.validateName(pro_name) > 0 || valiAd.valiProdNum(pro_price) > 0
                    || valiAd.valiProdNum(pro_stock) > 0
                    || valiForm.validateAddress(prodimgLink) > 0 || prodimgLink == null) {
                if (valiForm.validateName(pro_name) > 0) {
                    mm.put("proNamVali", valiForm.validateName(pro_name));
                } else {
                    mm.put("pro_name", pro_name);
                }
                if (valiAd.valiProdNum(pro_price) > 0) {
                    mm.put("proPricVali", valiAd.valiProdNum(pro_price));
                } else {
                    mm.put("pro_price", pro_price);
                }
                if (valiAd.valiProdNum(pro_stock) > 0) {
                    mm.put("proStoVali", valiAd.valiProdNum(pro_stock));
                } else {
                    mm.put("pro_stock", pro_stock);
                }
                if (valiForm.validateAddress(prodimgLink) > 0 || prodimgLink == null) {
                    mm.put("proImgLinkVali", 1);
                } else {
                    mm.put("pro_img_link", 0);
                }
                return "addNewProduct";
            } else {
                // insert into data
                dao_admin.insertProd(pro_name, Integer.parseInt(pro_price), prodimgLink, Integer.parseInt(pro_stock));
                // send view
                mm.put("succAddProd", 1);
                return "successProcess";
            }
        } else {
            return "signinAd";
        }
        
    }

    // search order from date
    @RequestMapping(value = "/searchOrder", method = RequestMethod.POST, params = {"searchOrd"})
    public String searchOrd(ModelMap mm, @RequestParam(value = "searchOrd") String inStr) {
        // process inputed string
        // format date
        // get order from inputed string
        List<order> ordLi = dao_admin.getOrdfromSear(inStr);
        mm.put("orderList", ordLi);
        mm.put("date", inStr);
        // return to orderbooking
        return "orderbooking";
    }

    // search product 
    @RequestMapping(value = "/searchProd", method = RequestMethod.POST, params = {"searchProd"})
    public String searchProd(ModelMap mm, @RequestParam(value = "searchProd") String inStr) {
        // process inputed string
        ValidateForm valiF = new ValidateForm();
        String[] words = valiF.sepString(inStr);
        // get product from inputed string
        List<product> prodLi = new ArrayList<>();
        for (int i = 0; i < words.length; i++) {
            dao_admin.getProdfromSearch(words[i], prodLi);
        }
        mm.put("proList", prodLi);
        // return to orderbooking
        return "manageProd";
    }
    
}

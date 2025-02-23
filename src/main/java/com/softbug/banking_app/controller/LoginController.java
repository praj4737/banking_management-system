package com.softbug.banking_app.controller;

import com.softbug.banking_app.beans.AccountOverview;
import com.softbug.banking_app.beans.Customer;
import com.softbug.banking_app.dao.AccountDao;
import com.softbug.banking_app.service.LoginService;
import jakarta.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
//@SessionAttributes("cusId")
public class LoginController {
    @Autowired
    private AccountDao dao;
    @Autowired
    private LoginService service;
    Logger LOGGER = LoggerFactory.getLogger(LoginController.class);
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String returnLogin(){
        LOGGER.info("entered login controller.");
        return "login";
    }
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(
            @RequestParam("cusId") String cusId,
            @RequestParam("pass") String pass,
            HttpSession session,
            ModelMap modelMap
    ){

        if(!service.validateLogin(cusId,pass)){
            return "login";
        }
        session.setAttribute("cusId",cusId);
        AccountOverview overview = dao.getAccountOverview(cusId);
        modelMap.put("overview",overview);
        return "home";
    }
}










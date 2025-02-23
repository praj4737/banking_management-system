package com.softbug.banking_app.controller;

import com.softbug.banking_app.beans.Account;
import com.softbug.banking_app.beans.Customer;
import com.softbug.banking_app.dao.ProfileDao;
import com.softbug.banking_app.service.ProfileService;
import jakarta.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Iterator;
import java.util.List;

@Controller
public class DashboardController {
    Logger LOGGER = LoggerFactory.getLogger(DashboardController.class);
    @Autowired
    ProfileService profileService;
    @Autowired
    ProfileDao dao;
    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String getProfile(HttpSession session, ModelMap modelMap){
        Customer customer = profileService.returnCustomer((String) session.getAttribute("cusId"));
        LOGGER.info(customer.getFname());
        LOGGER.info(customer.getAddress().getAddressLine1());
        LOGGER.info(String.valueOf(customer.getAccount().isEmpty()));
        List<Account> accounts = customer.getAccount();
        Iterator<Account> itr = accounts.iterator();
        while (itr.hasNext()){
            LOGGER.info(String.valueOf(itr.next().getAccountNo()));
//            LOGGER.info(itr.next().getAccountType());
        }
        modelMap.put("customer",customer);
        modelMap.put("accounts",customer.getAccount());
        return "Profile";
    }
    @RequestMapping(value = "/setting", method = RequestMethod.GET)
    public String setting(){

        return "Setting";
    }
    @RequestMapping(value = "/updateContact", method = RequestMethod.GET)
    public String getUpdateContact(){

        return "UpdateContact";
    }
    @RequestMapping(value = "/updateEmail", method = RequestMethod.POST)
    public String updateEmail(@RequestParam String email, HttpSession session){
        LOGGER.info(email);
        boolean res = dao.updateEmail(email,String.valueOf(session.getAttribute("cusId")));
        LOGGER.info(String.valueOf(res));
        return "UpdateContact";
    }
    @RequestMapping(value = "/updatePhoneNumber", method = RequestMethod.POST)
    public String updatePhoneNumber(@RequestParam String phoneNumber, HttpSession session){
        LOGGER.info(phoneNumber);
        boolean res = dao.updateContact(phoneNumber,String.valueOf(session.getAttribute("cusId")));
        LOGGER.info(String.valueOf(res));
        return "UpdateContact";
    }
    @RequestMapping(value = "/notification", method = RequestMethod.GET)
    public String getNotification(){

        return "Notification";
    }
    @RequestMapping(value = "/help", method = RequestMethod.GET)
    public String getHelp(){

        return "Help";
    }
    @RequestMapping(value = "/deactivateAccount", method = RequestMethod.GET)
    public String getDeactivate(){

        return "DeactivateAccount";
    }
    @RequestMapping(value = "/changePassword", method = RequestMethod.GET)
    public String getChangePassword(){

        return "ChangePassword";
    }
}

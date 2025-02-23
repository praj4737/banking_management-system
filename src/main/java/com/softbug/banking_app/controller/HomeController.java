package com.softbug.banking_app.controller;

import com.softbug.banking_app.beans.AccountOverview;
import com.softbug.banking_app.dao.AccountDao;
import com.softbug.banking_app.miscellaneous.Mail;
import com.softbug.banking_app.service.AccountService;
import com.softbug.banking_app.service.TransactionService;
import jakarta.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.LocalTime;

@Controller
@RequestMapping("/my-bank")
public class HomeController {
    Logger LOGGER = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    AccountDao dao;
    @Autowired
    TransactionService service;
    @Autowired
    AccountService accountService;
    @Autowired
    Mail mail;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home(){

        return "home";
    }

    @RequestMapping(value = "/accountOverview" , method = RequestMethod.GET)
    public String getAccountOverview(ModelMap modelMap, HttpSession session){
        String customerId = (String) session.getAttribute("cusId");
        AccountOverview accountOverview = accountService.getAccountOverview(customerId);
        modelMap.put("holdername",accountOverview.getHolderName());
        modelMap.put("status",accountOverview.isStatus());
        modelMap.put("accountNo",accountOverview.getAccountNumber());
        modelMap.put("balance",accountOverview.getBalance());
        modelMap.put("accountType",accountOverview.getAccountType());
        return "accountOverview";
    }

    @RequestMapping(value = "/transferFunds", method = RequestMethod.GET)
    public String gettransferFunds(ModelMap modelMap,HttpSession session){
        return "TransferFunds";
    }
    @RequestMapping(value = "/sendMoney" , method = RequestMethod.POST)
    public String transferFunds(
        @RequestParam String senderAccount,
        @RequestParam String receiverAccount,
        @RequestParam String ifscCode,
        @RequestParam String amount,
        @RequestParam String transferType,
        HttpSession session
    ){
        LOGGER.info("into the transfer money controller.");
        LOGGER.info(senderAccount);
        LOGGER.info(receiverAccount);
        LOGGER.info(ifscCode);
        LOGGER.info(amount);
        LOGGER.info(transferType);

         boolean res = service.TransferMoney(senderAccount,receiverAccount,ifscCode,Double.parseDouble(amount),transferType);
        LOGGER.info(String.valueOf(res));
         if(res){
             String email = dao.getEmail((String) session.getAttribute("cusId"));
             mail.send(email,"Fund Transfer","Dear Customer Your Account Has " +
                     "Been Debited For\n Amount: Rs. "+amount+"\n on \nTime:"+ LocalTime.now()+" \nDate: "+ LocalDate.now()+" " +
                     "\nThank You for Using MyBank Services..");
            return "redirect:success";

        }

        return "TransferFunds";
    }
    @RequestMapping(value = "/transactionHistory", method = RequestMethod.GET)
    public String transaction(ModelMap modelMap,HttpSession session){
        modelMap.put("transactions",accountService.AccountTransactions((String) session.getAttribute("cusId")));
        modelMap.put("accountNo", dao.getAccountNo((String) session.getAttribute("cusId")));
        return "TransactionHistory";
    }
    @RequestMapping(value = "/fundInvestment", method = RequestMethod.GET)
    public String fundInvestment(){
        return "FundInvestment";
    }
    @RequestMapping(value = "/success", method = RequestMethod.GET)
    public String success(){
        return "TransferSuccess";
    }

}

















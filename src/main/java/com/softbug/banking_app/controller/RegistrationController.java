package com.softbug.banking_app.controller;

import com.softbug.banking_app.beans.*;
import com.softbug.banking_app.miscellaneous.DocumentMisc;
import com.softbug.banking_app.miscellaneous.Mail;
import com.softbug.banking_app.service.RegistrationService;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;

import java.awt.*;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes("customer")
public class RegistrationController {
    @Autowired
    private RegistrationService service;
    @Autowired
    private Mail email;
    private final StandardServletMultipartResolver multipartResolver;
    private Customer customer;
    Logger logger = LoggerFactory.getLogger(RegistrationController.class);

    public RegistrationController(StandardServletMultipartResolver multipartResolver) {
        this.multipartResolver = multipartResolver;
    }

    @RequestMapping(value = "/register" , method = RequestMethod.GET)
    public String register(ModelMap model){
        model.put("customer",new Customer());
        return "register";
    }
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUser(
            @RequestParam String fname,
            @RequestParam String lname,
            @RequestParam LocalDate dateOfBirth,
            @RequestParam String email,
            @RequestParam String contactNumber,
            @RequestParam String password,
            ModelMap model
    ){
        logger.info(fname);
        logger.info(lname);
        logger.info(dateOfBirth.toString());
        logger.info(email);
        logger.info(contactNumber);
        logger.info(password);
        //setting customer details.
         customer = new Customer();
        customer.setFname(fname);
        customer.setLname(lname);
        customer.setDateOfBirth(dateOfBirth);
        customer.setStartDate(LocalDate.now());
        CustomerContact contact = new CustomerContact();
        contact.setEmail(email);
        contact.setPhoneNumber(contactNumber);
        customer.setContact(contact);
        contact.setCustomer(customer);
        CustomerCreds creds = new CustomerCreds();
        creds.setCustomer(customer);
        creds.setPassword(password);
        customer.setCreds(creds);



        return "redirect:address";
    }
    @RequestMapping(value="/address" , method = RequestMethod.GET)
    public String getAddressPage(ModelMap modelMap){
        modelMap.put("address", new Address());
        return "Address";
    }
    @RequestMapping(value = "/address" , method = RequestMethod.POST)
    public String saveAddress(@ModelAttribute("address") Address address){
        logger.info(customer.getFname());
        logger.info(address.getAddressLine1());
        logger.info(address.getAddressLine2());
        logger.info(address.getAddressLine3());
        logger.info(address.getCity());
        logger.info(address.getPincode());
        logger.info(address.getState());
        logger.info(address.getCountry());
        //setting the address to customer object.
        customer.setAddress(address);
        address.setCustomer(customer);
        return "redirect:document";
    }
    @RequestMapping(value="/document", method = RequestMethod.GET)
    public String getDocumentPage(ModelMap model){

        return "document";
    }
    @RequestMapping(value = "/document", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public String saveDocument(@RequestParam String aadharNo, @RequestParam String panNo , @RequestParam MultipartFile aadharcard, @RequestParam MultipartFile panCard, @RequestParam MultipartFile photo){
        logger.info("inside the saveDocuments methos");
        logger.info(aadharcard.getOriginalFilename());
        logger.info(panCard.getOriginalFilename());
        logger.info("aadhar :"+new DocumentMisc().saveDocument(aadharcard));
        logger.info("pan card:"+new DocumentMisc().saveDocument(panCard));
        logger.info("photo: "+new DocumentMisc().saveDocument(photo));
        //setting the documents to customer object....
        Document doc = new Document();
        doc.setAadharNo(aadharNo);
        doc.setAadharCard(aadharcard.getOriginalFilename());
        doc.setPanCard(panCard.getOriginalFilename());
        doc.setPhotograph(photo.getOriginalFilename());
        doc.setPanNo(panNo);
        customer.setDocument(doc);
        logger.info("Here i recahed.");
        return "redirect:accountType";
    }
    @RequestMapping(value = "/accountType" , method = RequestMethod.GET)
    public String getAccountType(){

        return "AccountType";
    }
    @RequestMapping(value = "/setAccountType" , method = RequestMethod.POST)
    public String saveAccountType(@RequestParam String accountType, HttpSession session){

        logger.info("accountType: "+accountType);

        List<Account> accounts = new ArrayList<>();
        Account acc = new Account();
        acc.setCustomer(customer);
        acc.setAccountType(accountType);
        acc.setBalance(0);
        acc.setStatus(true);
        accounts.add(acc);
        customer.setAccount(accounts);
        if(service.validateCustomerData(customer)) {
            return "redirect:registrationSuccessful";

        }
        String res = email.send(customer.getContact().getEmail(), "Congratulations", "congrats Mr." + customer.getLname() + " you are officially a customer of My Bank\n kindly login to your account and enjoy our services. \n Thank you.") ? "sent Successfully" : "could not sent due to some error";
        logger.info(res);


        return "redirect:registrationFailed";

    }
    @RequestMapping(value = "/registrationSuccessful",method=RequestMethod.GET)
    public String success(HttpServletResponse response){

        return "RegistrationSuccess";
    }
    @RequestMapping(value = "/registrationFailed",method=RequestMethod.GET)
    public String failed(){

        return "RegisterationFailed";
    }
}


















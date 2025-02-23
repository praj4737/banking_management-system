package com.softbug.banking_app.service;

import com.softbug.banking_app.beans.Customer;
import com.softbug.banking_app.dao.RegistrationDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegistrationService {
    private RegistrationDao dao;
    @Autowired
    public RegistrationService(RegistrationDao dao){
        this.dao = dao;
    }
    public boolean validateCustomerData(Customer customer){
        boolean res = false;

        if(null!=customer && null!=customer.getAddress() && null!=customer.getContact() && null!=customer.getCreds()
                && null!=customer.getDocument() && null!=customer.getAccount()){
                res = dao.createCustomer(customer);
        }
        return res;
    }
}

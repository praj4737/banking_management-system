package com.softbug.banking_app.service;

import com.softbug.banking_app.beans.Customer;
import com.softbug.banking_app.dao.ProfileDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProfileService {
    @Autowired
    ProfileDao dao;

    public Customer returnCustomer(String customerId){
        Customer customer = dao.getCustomer(customerId);

        return customer;

    }
}

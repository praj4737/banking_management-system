package com.softbug.banking_app.service;

import com.softbug.banking_app.beans.Customer;
import com.softbug.banking_app.beans.CustomerCreds;
import com.softbug.banking_app.dao.LoginDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
    @Autowired
    private LoginDao dao;

    public boolean validateLogin(String customerId, String password) {
//        if (customerId.length() < 5 && password.length() < 8) {
//            return false;
//        }

        return dao.DoesUserExists(customerId, password);
    }
}

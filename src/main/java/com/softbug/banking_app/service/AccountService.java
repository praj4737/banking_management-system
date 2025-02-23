package com.softbug.banking_app.service;

import com.softbug.banking_app.beans.AccountOverview;
import com.softbug.banking_app.beans.Transaction;
import com.softbug.banking_app.dao.AccountDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountService {

    @Autowired
    AccountDao dao;
    public AccountOverview getAccountOverview(String customerId){

        return dao.getAccountOverview(customerId);
    }
    public List<Transaction> AccountTransactions(String customerId){

        return dao.getTransactions(dao.getAccountNo(customerId));
    }
}

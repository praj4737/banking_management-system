package com.softbug.banking_app.service;

import com.softbug.banking_app.beans.Transaction;
import com.softbug.banking_app.dao.AccountDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;

@Service
public class TransactionService {
    @Autowired
    AccountDao dao;
    public boolean TransferMoney(
    String senderAccount,
    String receiverAccount,
    String ifscCode,
    double amount,
    String transferType
    ){
        if(senderAccount.length()>=4 && receiverAccount.length()>=4 && ifscCode.length()>=11 && amount>0){
            Transaction transaction = new Transaction();
            transaction.setSenderAccountNo(Integer.parseInt(senderAccount));
            transaction.setRecieverAccountNo(Integer.parseInt(receiverAccount));
            transaction.setSentAmount(amount);
            transaction.setDate(LocalDate.now());

            return dao.sendMoney(senderAccount,receiverAccount,ifscCode,amount,transferType,transaction);
        }

        return false;
    }
}

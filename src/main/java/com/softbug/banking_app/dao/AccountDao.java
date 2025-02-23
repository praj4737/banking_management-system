package com.softbug.banking_app.dao;

import com.softbug.banking_app.beans.Account;
import com.softbug.banking_app.beans.AccountOverview;
import com.softbug.banking_app.beans.Transaction;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;
import jakarta.transaction.Transactional;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;

@Repository
public class AccountDao {
    @PersistenceContext
    EntityManager entityManager;

    @Transactional
    public AccountOverview getAccountOverview(String customerId){
        AccountOverview accountOverview =new AccountOverview();
        Query query = entityManager.createQuery("select acc.accountNo," +
                " acc.balance, cus.fname, cus.lname, acc.status,acc.accountType from Account acc" +
                " join Customer cus on acc.customer.id = cus.id where cus.id=:customerId");
        query.setParameter("customerId",customerId);
        List<Object[]> list = query.getResultList();
        for(Object[] o: list){
            accountOverview.setAccountNumber(String.valueOf(o[0]));
            accountOverview.setBalance((Double) o[1]);
            accountOverview.setHolderName(o[2]+" "+o[3]);
            accountOverview.setStatus((boolean)o[4]);
            accountOverview.setAccountType(String.valueOf(o[5]));
        }
        System.out.println(accountOverview.getAccountNumber());
        System.out.println(accountOverview.getBalance());
        return accountOverview;
    }
    @Transactional
    public boolean sendMoney(
             String senderAccount,
             String receiverAccount,
             String ifscCode,
             double amount,
             String transferType,
             Transaction transaction
    )
    {
        if(isUserActive(senderAccount) && isUserActive(senderAccount)){
            System.out.println(isUserActive(senderAccount)+" "+isUserActive(receiverAccount));
            if(getBalance(senderAccount)>=amount){
                System.out.println(getBalance(senderAccount) + " "+ getBalance(receiverAccount));
                return sendAmount(senderAccount,receiverAccount,amount,transaction);
            }else{
                System.out.println("insufficient balance...");
            }
        }else{
            System.out.println("user not active...");
        }

        return false;
    }
    @Transactional
    public boolean sendAmount(String senderAccount, String recieverAccount, double amount, Transaction transaction){
        try {
            Query query1 = entityManager.createQuery("update Account set balance=balance-:amount where accountNo=:senderAccount");
            Query query2 = entityManager.createQuery("update Account set balance=balance+:amount where accountNo=:recieverAccount");
            query1.setParameter("senderAccount", senderAccount);
            query2.setParameter("recieverAccount", recieverAccount);
            query1.setParameter("amount",amount);
            query2.setParameter("amount",amount);
            query1.executeUpdate();

            query2.executeUpdate();
            entityManager.persist(transaction);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("sorry cannot complete the transaction...");
        }
        return false;
    }
    @Transactional
    public double getBalance(String accountNumber){
        Query query = entityManager.createQuery("SELECT balance FROM Account where accountNo=:accountNo");
        query.setParameter("accountNo",accountNumber);
        System.out.println(query.getSingleResult());
        return (double) query.getSingleResult();
    }
    @Transactional
    public boolean isUserActive(String accountNumber){
        Query query = entityManager.createQuery("SELECT status FROM Account WHERE accountNo=:accountNo");
        query.setParameter("accountNo", accountNumber);
        System.out.println(query.getSingleResult());
        
        return (boolean) query.getSingleResult();
    }
   @Transactional
    public List<Transaction> getTransactions(String accountNo){

        Query query = entityManager.createQuery("FROM Transaction WHERE" +
                " senderAccountNo=:accountNo or recieverAccountNo=:accountNo order by date");

        query.setParameter("accountNo",accountNo);


        return query.getResultList();
   }
   @Transactional
    public String getAccountNo(String customerId){
        Query query = entityManager.createQuery("SELECT accountNo FROM" +
                " Account WHERE customer.id=:customerId");
        query.setParameter("customerId",customerId);

        return String.valueOf(query.getSingleResult());

   }
    @Transactional
    public String getEmail(String customerId){
        Query query = entityManager.createQuery("SELECT email FROM" +
                " CustomerContact WHERE customer.id=:customerId");
        query.setParameter("customerId",customerId);

        return String.valueOf(query.getSingleResult());

    }

}














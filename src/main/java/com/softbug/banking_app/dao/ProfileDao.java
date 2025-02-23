package com.softbug.banking_app.dao;

import com.softbug.banking_app.beans.Customer;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

@Repository
public class ProfileDao {
    @PersistenceContext
    EntityManager entityManager;

    @Transactional
    public Customer getCustomer(String customerId){

        return entityManager.find(Customer.class,customerId);

    }
    @Transactional
    public boolean updateEmail(String email,String customerId){
        Query query = entityManager.createQuery("update CustomerContact set email=:email where customer.id=:customerId");
        query.setParameter("email",email);
        query.setParameter("customerId",customerId);

        return query.executeUpdate() > 0;
    }
    @Transactional
    public boolean updateContact(String phoneNumber, String customerId){
        Query query = entityManager.createQuery("update CustomerContact set phoneNumber=:newPhoneNumber where customer.id=:customerId");
        query.setParameter("newPhoneNumber",phoneNumber);
        query.setParameter("customerId",customerId);

        return query.executeUpdate() > 0;
    }

}













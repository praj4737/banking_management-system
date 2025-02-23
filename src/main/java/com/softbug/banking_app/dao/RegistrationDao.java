package com.softbug.banking_app.dao;

import com.softbug.banking_app.beans.Customer;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

@Repository
public class RegistrationDao {
    @PersistenceContext
    EntityManager entityManager;

    @Transactional
    public boolean createCustomer(Customer customer){
        entityManager.persist(customer);
        return true;
    }
}

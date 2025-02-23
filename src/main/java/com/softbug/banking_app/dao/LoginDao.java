package com.softbug.banking_app.dao;

import com.softbug.banking_app.beans.Customer;
import com.softbug.banking_app.beans.CustomerCreds;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LoginDao {
    @PersistenceContext
    EntityManager entityManager;

    public boolean DoesUserExists(String customerId, String password){
        TypedQuery<CustomerCreds> query = entityManager.createQuery
                ("FROM CustomerCreds WHERE  customer.id=:customerId and password=:password"
                        , CustomerCreds.class);
        query.setParameter("password",password);
        query.setParameter("customerId",customerId);

        List<CustomerCreds> creds = query.getResultList();

        return !creds.isEmpty();
    }

}

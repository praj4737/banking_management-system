package com.softbug.banking_app.beans;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int accountNo;
    @NotNull
    private String accountType;
    private double balance;
    @NotNull
    private boolean status;
    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customer customer;
}













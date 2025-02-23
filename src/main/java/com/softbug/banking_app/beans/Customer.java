package com.softbug.banking_app.beans;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotNull
    private String fname;
    @NotNull
    private String lname;
    @NotNull
    private LocalDate dateOfBirth;
    @NotNull
    private LocalDate startDate;
    private LocalDate endDate;
    @NotNull
    private boolean status;
    @OneToOne(cascade = CascadeType.ALL)
    private Address address;
    @OneToOne(cascade = CascadeType.ALL)
    private CustomerContact contact;
    @OneToMany(cascade = CascadeType.ALL)
    private List<Account> account;
    @OneToOne(cascade = CascadeType.ALL)
    private CustomerCreds creds;
    @OneToOne(cascade = CascadeType.ALL)
    private Document document;
}
















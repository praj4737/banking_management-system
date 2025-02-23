package com.softbug.banking_app.beans;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
public class Branch {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "branch_name")
    private String name;
    @Column(name = "IFSC_code")
    private String ifsc;
    @OneToOne
    private BranchAddress branchAddress;
    @ManyToOne
    @JoinColumn(name = "bank_id")
    private Bank bank;
}
























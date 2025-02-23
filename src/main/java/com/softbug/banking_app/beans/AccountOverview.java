package com.softbug.banking_app.beans;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class AccountOverview {
    private String accountNumber;
    private double balance;
    private String holderName;
    private boolean status;
    private String branchName;
    private String accountType;

}

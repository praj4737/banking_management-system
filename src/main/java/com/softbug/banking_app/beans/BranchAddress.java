package com.softbug.banking_app.beans;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
public class BranchAddress {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotNull
    @Size(min = 0, max = 30)
    private String addressLine1;
    @NotNull
    @Size(min = 0, max = 30)
    private String addressLine2;
    @NotNull
    @Size(min = 0, max = 30)
    private String addressLine3;
    @NotNull
    @Size(min = 6, max = 6)
    private String pincode;
    private String city;
    @NotNull
    private String state;
    @NotNull
    private String country;
    @NotNull
    private boolean status;
    @OneToOne
    @JoinColumn(name = "branch_id")
    private Branch branch;
}

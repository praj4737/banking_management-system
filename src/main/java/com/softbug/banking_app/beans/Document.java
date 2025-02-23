package com.softbug.banking_app.beans;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.eclipse.tags.shaded.org.apache.xalan.xsltc.compiler.SyntaxTreeNode;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
public class Document {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotNull
    @Size(min = 12, max = 12)
    private String aadharNo;
    @NotNull
    private String aadharCard;
    @NotNull
    @Size(min = 10, max = 10)
    private String panNo;
    @NotNull
    private String panCard;
    @NotNull
    private String photograph;
}










package com.softbug.banking_app.miscellaneous;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class Mail {
    private JavaMailSender sender;
    @Autowired
    public Mail(JavaMailSender sender){
        this.sender = sender;
    }
    public Mail(){

    }


    public boolean send(String customerEmail, String subject, String body){
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(customerEmail);
        message.setSubject(subject);
        message.setText(body);

        sender.send(message);

        return true;

    }
}

package com.softbug.banking_app.miscellaneous;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.AccessDeniedException;


public class DocumentMisc {
    Logger LOGGER = LoggerFactory.getLogger(DocumentMisc.class);
    public boolean saveDocument(MultipartFile file){
        try {
            String directory = "C:\\Users\\prana\\Downloads\\banking-app\\banking-app\\src\\main\\webapp\\documents\\";
            file.transferTo(new File(directory + file.getOriginalFilename()));
            return true;
        }catch (AccessDeniedException se){
            LOGGER.info("there is some error regardinig the file sent, Possibly empty.");

        }
        catch (IOException ie){
            ie.printStackTrace();
        }
        return false;
    }
}

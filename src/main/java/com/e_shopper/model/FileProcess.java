/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.e_shopper.model;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


/**
 *
 * @author User
 */
public class FileProcess {
   //Save the uploaded file to this folder
    private String UPLOADED_FOLDER = "D:/Documents/Programing/Git/e-shopper/src/main/webapp/assets/themes/images/ladies/";
   // return new root file
    public String processFile(MultipartFile file){
        try {

            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = (Path) Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);

        } catch (IOException e) {
            e.printStackTrace();
        }
        return "/e-shopper/assets/themes/images/ladies/"+file.getOriginalFilename();

    }
}

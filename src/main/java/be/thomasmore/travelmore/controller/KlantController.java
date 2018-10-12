package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Klant;

import java.security.*;
import java.lang.*;
public class KlantController {

    private Klant klant = new Klant();

    public void register(){

    }

    public void login(){

    }

    public String encrypt(String pass){

        byte[] bytepass = pass.getBytes();
        try{
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] encodedpass = digest.digest(bytepass);
            String encodedstring = new String(encodedpass);
            System.out.println(encodedstring);
            return encodedstring;
        }catch (NoSuchAlgorithmException e){
            return "";
        }
    }

    public Boolean verify(String pass, String encrypted){
        byte[] bytepass = pass.getBytes();
        byte[] byteencryption = encrypted.getBytes();
            return MessageDigest.isEqual(bytepass, byteencryption);
    }


}

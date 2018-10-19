package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Klant;
import be.thomasmore.travelmore.service.KlantService;


import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.inject.Inject;
import java.lang.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

@ManagedBean
@ViewScoped
public class KlantController {

    @Inject
    private KlantService klantService;

    private Klant klant = new Klant();

    public Klant getKlant() {
        return klant;
    }

    public void setKlant(Klant klant) {
        this.klant = klant;
    }

    public List<Klant> getLocations(){
        return this.klantService.findAllKlanten();
    }

    public void submit(){
        this.klantService.insert(klant);
    }





    public void register(String email, String pass, String voornaam, String achternaam){
        String encodedpass =  encrypt(pass);
        klant.setEmail(email);
        klant.setWachtwoord(pass);
        klant.setAchternaam(achternaam);
        klant.setVoornaam(voornaam);
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

package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Klant;
import be.thomasmore.travelmore.service.KlantService;
import be.thomasmore.travelmore.utility.SessionVariables;
import be.thomasmore.travelmore.utility.Singletons;


import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.inject.Inject;
import javax.inject.Singleton;
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

    public String register(){
        klant.setWachtwoord(encrypt(klant.getWachtwoord()));
        this.klantService.insert(klant);
        Singletons.getInstance().setGebruiker(klant);
        return "index";

    }

    public String login(){
        Klant bestaandeklant = klantService.findKlantByEmail(klant.getEmail());

        if(verify(klant.getWachtwoord(),bestaandeklant.getWachtwoord())){
            Singletons.getInstance().setGebruiker(bestaandeklant);
            System.out.println(Singletons.getInstance().getGebruiker());
            return "index";
        }
        return "login";
    }

    public String logout(){
        Singletons.getInstance().setGebruiker(null);
        return "index";
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
        pass = encrypt(pass);

        byte[] bytepass = pass.getBytes();
        byte[] byteencryption = encrypted.getBytes();
        return MessageDigest.isEqual(bytepass, byteencryption);
    }


}

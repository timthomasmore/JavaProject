package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Klant;
import be.thomasmore.travelmore.exceptions.AlreadyExistException;
import be.thomasmore.travelmore.service.KlantService;
import be.thomasmore.travelmore.utility.AuthenticationService;


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
    private AuthenticationService authenticationService;

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

    public String errorMessage;

    public String register(){
        if(!klantService.emailAvailable(klant.getEmail())){
            errorMessage = "Het opgegeven email adress bestaat al.";
            return "";
        }
        if(!authenticationService.confirm(klant.getWachtwoord())){
            errorMessage = "het bevestigingswachtwoord komt niet overeen met het wachtwoord";
            return "";
        }

        klant.setWachtwoord(encrypt(klant.getWachtwoord()));
            this.klantService.insert(klant);
            authenticationService.login(klant);
            return "index";

    }

    public String login(){
        Klant bestaandeklant = new Klant();
           try {
               bestaandeklant = klantService.findKlantByEmail(klant.getEmail());
           } catch (Exception e){
               errorMessage = "De ingevulde gegevens kloppen niet";
               return "";
           }

        if(verify(klant.getWachtwoord(),bestaandeklant.getWachtwoord())){
            authenticationService.login(bestaandeklant);
            return "index";
        }
        errorMessage = "De ingevulde gegevens kloppen niet";
        return "";
    }

    public String logout(){
        authenticationService.logout();
        return "index";
    }

    public String getErrorMessage(){
        return errorMessage;
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

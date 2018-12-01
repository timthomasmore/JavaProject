package be.thomasmore.travelmore.utility;

import be.thomasmore.travelmore.controller.KlantController;
import be.thomasmore.travelmore.domain.Klant;

import javax.ejb.Stateful;
import javax.ejb.Stateless;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;
import java.io.Serializable;

@SessionScoped
@Named("authenticationService")
public class AuthenticationService implements Serializable {

    public AuthenticationService(){

    }

    private Klant klant;

    private String confirmpass;

    public void login(Klant klant){
        if(!isLoggedIn()){
            this.klant = klant;
        }
    }

    public Boolean confirm(String pass){
        return (pass.equals(confirmpass));
    }

    public void logout(){
        this.klant = null;
    }

    public boolean isLoggedIn(){
        return this.klant != null;
    }

    public Klant getKlant(){
        return klant;
    }

    public void setConfirmpass(String confirmpass) {
        this.confirmpass = confirmpass;
    }

    public String getConfirmpass() {
        return confirmpass;
    }
}

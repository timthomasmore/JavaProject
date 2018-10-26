package be.thomasmore.travelmore.utility;

import be.thomasmore.travelmore.domain.Klant;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean
@ViewScoped
public class SessionVariables {
    public SessionVariables(){

    }

    public Klant getGebruiker(){
        return Singletons.getInstance().getGebruiker();
    }
}

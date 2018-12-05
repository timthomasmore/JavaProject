package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Locatie;
import be.thomasmore.travelmore.service.LocatieService;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.inject.Inject;
import java.util.List;

@ManagedBean
@ViewScoped
public class LocatieController {

    private Locatie newLocatie = new Locatie();
    private List<Locatie> locaties;

    @Inject
    private LocatieService LocatieService;

    public Locatie getNewLocatie() {
        return newLocatie;
    }

    public void setNewLocatie(Locatie newLocatie) {
        this.newLocatie = newLocatie;
    }

    public List<Locatie> getLocaties(){
        return this.LocatieService.findAllLocaties();
    }

    public void setLocaties(List<Locatie> locaties) {
        this.locaties = locaties;
    }

    public void submit(){
        this.LocatieService.insert(newLocatie);
    }

}

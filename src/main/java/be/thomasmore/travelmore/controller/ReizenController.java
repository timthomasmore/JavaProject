package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Reis;
import be.thomasmore.travelmore.service.ReisService;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;
import java.util.Iterator;
import java.util.List;

@ManagedBean
@SessionScoped
public class ReizenController {

    @Inject
    private ReisService reisService;
    public Reis reis;

    public Reis getReis() {
        return reis;
    }

    public void setReis(Reis reis) {
        this.reis = reis;
    }

    public List<Reis> getReizen() {
        List<Reis> reizen = this.reisService.findAllReizen();
        // Datum en uur formatteren
        for (Reis reis : reizen) {
            reis.setVertrekUur(reis.getVertrekUur().substring(0, 2) + "u" + reis.getVertrekUur().substring(3, 5));
            String[] parts = reis.getVertrekDatum().split("-");
            reis.setVertrekDatum(parts[2] + "/" + parts[1] + "/" + parts[0]);
        }
        return reizen;
    }

    public String getReisById(int id) {
        this.setReis(this.reisService.findById(id));
        return "reizenDetail.xhtml";
    }
}

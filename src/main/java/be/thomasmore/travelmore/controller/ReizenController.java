package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Reis;
import be.thomasmore.travelmore.service.ReisService;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;
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

    public List<Reis> getReizen(){
        return this.reisService.findAllReizen();
    }

    public String getReisById(int id) {
        this.setReis(this.reisService.findById(id));
        return "reizenDetail.xhtml";
    }
}

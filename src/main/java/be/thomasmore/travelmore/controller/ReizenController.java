package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Reis;
import be.thomasmore.travelmore.service.ReisService;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;
import java.util.Date;
import java.util.List;


@ManagedBean
@SessionScoped
public class ReizenController {

    @Inject
    private ReisService reisService;
    public Reis reis;
    private Date vertrekDatum;
    public List<Reis> reizen;
    public List<Reis> reizenFiltered;

    public Date getVertrekDatum() {
        return vertrekDatum;
    }

    public void setVertrekDatum(Date vertrekDatum) {
        this.vertrekDatum = vertrekDatum;
    }

    public Reis getReis() {
        return reis;
    }
    public void setReis(Reis reis) {
        this.reis = reis;
    }

    public List<Reis> getReizen() {
        List<Reis> reizen = this.reisService.findAllReizen();
        // Datum en uur formatteren
        reizen = formateerDatum(reizen);

        return reizen;
    }

    public void setReizen(List<Reis> reizen) {
        this.reizen = reizen;
    }

    public List<Reis> getReizenFiltered() {
        return reizenFiltered;
    }

    public void setReizenFiltered(List<Reis> reizenFiltered) {
        this.reizenFiltered = reizenFiltered;
    }

    public String getReisById(int id) {
        this.setReis(this.reisService.findById(id));
        return "reizenDetail.xhtml";
    }

    public String zoekReizen(String vertrek, String bestemming, Date vDate, Integer plaatsen, double maxPrijs, String transportmiddel, boolean heenTerug, Date tDate)
    {
        vertrek = vertrek.length() == 0 ? null : vertrek;
        bestemming = bestemming.length() == 0 ? null : bestemming;
        transportmiddel = transportmiddel == "" ? null : transportmiddel;
        java.sql.Date vertrekDatum = vDate == null ? null : new java.sql.Date(vDate.getTime());
        java.sql.Date terugDatum = tDate == null ? null : new java.sql.Date(tDate.getTime());

        List<Reis> reizen = this.reisService.findReizen(vertrek, bestemming, vertrekDatum, plaatsen, maxPrijs, transportmiddel);
        List<Reis> terugReizen = heenTerug ? this.reisService.findReizen(bestemming, vertrek, terugDatum, plaatsen, maxPrijs, transportmiddel) : null;
        if ( terugReizen != null) {
            reizen.addAll(terugReizen);
        }

        reizen = formateerDatum(reizen);

        setReizenFiltered(reizen);
        return "reizenFiltered";
    }

    public String zoekReizenHomepage(String bestemming){
        bestemming = bestemming.length() == 0 ? null : bestemming;
        List<Reis> reizen = this.reisService.findReizen(null, bestemming, null, 0, 0, null);

        reizen = formateerDatum(reizen);

        setReizenFiltered(reizen);
        return "reizenFiltered";
    }

    public List<Reis> formateerDatum(List<Reis> reizen) {
        for (Reis reis : reizen) {
            reis.setVertrekUur(reis.getVertrekUur().substring(0, 2) + "u" + reis.getVertrekUur().substring(3, 5));
            String[] parts = reis.getVertrekDatum().split("-");
            reis.setVertrekDatum(parts[2] + "/" + parts[1] + "/" + parts[0]);
        }
        return reizen;
    }


}

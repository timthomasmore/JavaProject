package be.thomasmore.travelmore.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "boeking")

public class Boeking {

    @Id
    private int id;
    @Column(name = "klantId")
    private int klantId;
    @Column(name = "prijs")
    private double prijs;
    @Column(name = "isBetaald")
    private boolean isBetaald;
    @Column(name = "heenReisId")
    private int heenReisId;
    @Column(name = "terugReisId")
    private int terugReisId;

    public Boeking() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getKlantId() {
        return klantId;
    }

    public void setKlantId(int klantId) {
        this.klantId = klantId;
    }

    public double getPrijs() {
        return prijs;
    }

    public void setPrijs(double prijs) {
        this.prijs = prijs;
    }

    public boolean isBetaald() {
        return isBetaald;
    }

    public void setBetaald(boolean betaald) {
        isBetaald = betaald;
    }

    public int getHeenReisId() {
        return heenReisId;
    }

    public void setHeenReisId(int heenReisId) {
        this.heenReisId = heenReisId;
    }

    public int getTerugReisId() {
        return terugReisId;
    }

    public void setTerugReisId(int terugReisId) {
        this.terugReisId = terugReisId;
    }
}

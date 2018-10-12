package be.thomasmore.travelmore.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "transportmiddel")

public class Transportmiddel {

    @Id
    private int id;
    @Column(name = "naam")
    private String naam;
    @Column(name = "maxPlaatsen")
    private int maxPlaatsen;

    public Transportmiddel() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNaam() {
        return naam;
    }

    public void setNaam(String naam) {
        this.naam = naam;
    }

    public int getMaxPlaatsen() {
        return maxPlaatsen;
    }

    public void setMaxPlaatsen(int maxPlaatsen) {
        this.maxPlaatsen = maxPlaatsen;
    }
}

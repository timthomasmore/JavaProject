package be.thomasmore.travelmore.domain;

import javax.persistence.*;

@Entity
@Table(name = "reis")

public class Reis {
    public static final String FIND_ALL = "Reis.findAll";

    @Id
    private int id;
    @Column(name = "vertrekLocatieId")
    private int vertrekLocatieId;
    @Column(name = "bestemmingLocatieId")
    private int bestemmingLocatieId;
    @Column(name = "prijs")
    private boolean prijs;
    @Column(name = "transportMiddelId")
    private int transportMiddelId;

    public Reis() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVertrekLocatieId() {
        return vertrekLocatieId;
    }

    public void setVertrekLocatieId(int vertrekLocatieId) {
        this.vertrekLocatieId = vertrekLocatieId;
    }

    public int getBestemmingLocatieId() {
        return bestemmingLocatieId;
    }

    public void setBestemmingLocatieId(int bestemmingLocatieId) {
        this.bestemmingLocatieId = bestemmingLocatieId;
    }

    public boolean isPrijs() {
        return prijs;
    }

    public void setPrijs(boolean prijs) {
        this.prijs = prijs;
    }

    public int getTransportMiddelId() {
        return transportMiddelId;
    }

    public void setTransportMiddelId(int transportMiddelId) {
        this.transportMiddelId = transportMiddelId;
    }
}

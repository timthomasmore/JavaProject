package be.thomasmore.travelmore.domain;

import javax.inject.Named;
import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "transportmiddel")
@NamedQueries(
        {
                @NamedQuery(
                        name = Transportmiddel.FIND_ALL,
                        query = "SELECT t FROM Transportmiddel t"
                ),
        }
)

public class Transportmiddel {
    public static final String FIND_ALL = "Transportmiddel.findAll";

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

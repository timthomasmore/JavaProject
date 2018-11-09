package be.thomasmore.travelmore.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "reis")
@NamedQueries(
        {
                @NamedQuery(
                        name = Reis.FIND_ALL,
                        query = "SELECT r FROM Reis r"
                ),
                @NamedQuery(
                        name = Reis.FIND_BY_ID,
                        query = "SELECT r FROM Reis r WHERE r.id = :id"
                )
        }
)

public class Reis implements Serializable {
    public static final String FIND_ALL = "Reis.findAll";
    public static final String FIND_BY_ID = "Reis.findById";

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "prijs")
    private double prijs;
    @Column(name = "vertrekDatum")
    private String vertrekDatum;
    @Column(name = "vertrekUur")
    private String vertrekUur;
    @ManyToOne
    @JoinColumn(name = "bestemmingLocatieId")
    private Locatie bestemmingLocatie;
    @ManyToOne
    @JoinColumn(name = "vertrekLocatieId")
    private Locatie vertrekLocatie;
    @ManyToOne
    @JoinColumn(name = "transportMiddelId")
    private Transportmiddel transportMiddel;



    public Reis() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPrijs() {
        return prijs;
    }

    public void setPrijs(double prijs) {
        this.prijs = prijs;
    }

    public String getVertrekDatum() {
        return vertrekDatum;
    }

    public void setVertrekDatum(String vertrekDatum) {
        this.vertrekDatum = vertrekDatum;
    }

    public String getVertrekUur() {
        return vertrekUur;
    }

    public void setVertrekUur(String vertrekUur) {
        this.vertrekUur = vertrekUur;
    }

    public Locatie getBestemmingLocatie() {
        return bestemmingLocatie;
    }

    public void setBestemmingLocatie(Locatie bestemmingLocatie) {
        this.bestemmingLocatie = bestemmingLocatie;
    }

    public Locatie getVertrekLocatie() {
        return vertrekLocatie;
    }

    public void setVertrekLocatie(Locatie vertrekLocatie) {
        this.vertrekLocatie = vertrekLocatie;
    }

    public Transportmiddel getTransportMiddel() {
        return transportMiddel;
    }

    public void setTransportMiddel(Transportmiddel transportMiddel) {
        this.transportMiddel = transportMiddel;
    }
}

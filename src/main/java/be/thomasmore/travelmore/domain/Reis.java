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
                )
        }
)

public class Reis implements Serializable {
    public static final String FIND_ALL = "Reis.findAll";

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "vertrekLocatieId")
    private int vertrekLocatieId;
    @Column(name = "bestemmingLocatieId")
    private int bestemmingLocatie_Id;
    @Column(name = "prijs")
    private double prijs;
    @Column(name = "transportMiddelId")
    private int transportMiddelId;
    @Column(name = "vertrekDatum")
    private String vertrekDatum;
    @Column(name = "vertrekUur")
    private String vertrekUur;
    @ManyToOne
    private Locatie bestemmingLocatie;



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
        return bestemmingLocatie_Id;
    }

    public void setBestemmingLocatieId(int bestemmingLocatieId) {
        this.bestemmingLocatie_Id = bestemmingLocatieId;
    }

    public double getPrijs() {
        return prijs;
    }

    public void setPrijs(double prijs) {
        this.prijs = prijs;
    }

    public int getTransportMiddelId() {
        return transportMiddelId;
    }

    public void setTransportMiddelId(int transportMiddelId) {
        this.transportMiddelId = transportMiddelId;
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
}

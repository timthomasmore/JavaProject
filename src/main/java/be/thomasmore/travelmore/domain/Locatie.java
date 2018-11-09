package be.thomasmore.travelmore.domain;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "locatie")
@NamedQueries(
        {
                @NamedQuery(
                        name = Locatie.FIND_BY_CODE,
                        query = "SELECT l FROM Locatie l WHERE l.code = :code"
                ),
                @NamedQuery(
                        name = Locatie.FIND_ALL,
                        query = "SELECT l FROM Locatie l"
                )
        }
)
public class Locatie implements Serializable {
    public static final String FIND_ALL = "Locatie.findAll";
    public static final String FIND_BY_CODE = "Locatie.findByCode";

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "naam")
    private String naam;
    @Column(name = "code")
    @Size(min=3, max = 10)
    private String code;
    @OneToMany(mappedBy="bestemmingLocatie")
    private List<Reis> reizenBestemming = new ArrayList<Reis>();
    @OneToMany(mappedBy="vertrekLocatie")
    private List<Reis> reizenVertrek = new ArrayList<Reis>();

    public Locatie() {
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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}

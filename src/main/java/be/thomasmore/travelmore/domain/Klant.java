package be.thomasmore.travelmore.domain;

import javax.persistence.*;
import javax.validation.constraints.Size;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "klant")
@NamedQueries(
        {
                @NamedQuery(
                        name = Klant.FIND_BY_EMAIL,
                        query = "SELECT l FROM Klant l WHERE l.email = :email"
                ),
                @NamedQuery(
                        name = Klant.FIND_ALL,
                        query = "SELECT l FROM Klant l"
                )
        }
)

public class Klant {
    public static final String FIND_ALL = "Klant.findAll";
    public static final String FIND_BY_EMAIL = "Klant.findByEmail";

    @Id
    private int id;
    @Column(name = "voornaam")
    @Size(min = 1)
    private String voornaam;
    @Column(name = "achternaam")
    @Size(min = 1)
    private String achternaam;
    @Column(name = "email")
    @Pattern(regexp = "[A-z]+@[A-z]+.[A-z]+")
    private String email;
    @Column(name = "wachtwoord")
    @Size(min = 6)
    private String wachtwoord;

    public Klant() {
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVoornaam() {
        return voornaam;
    }

    public void setVoornaam(String voornaam) {
        this.voornaam = voornaam;
    }

    public String getAchternaam() {
        return achternaam;
    }

    public void setAchternaam(String achternaam) {
        this.achternaam = achternaam;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWachtwoord() {
        return wachtwoord;
    }

    public void setWachtwoord(String wachtwoord) {
        this.wachtwoord = wachtwoord;
    }
}

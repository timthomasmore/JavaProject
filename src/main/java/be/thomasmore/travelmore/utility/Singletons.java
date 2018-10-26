package be.thomasmore.travelmore.utility;

import be.thomasmore.travelmore.domain.Klant;

public class Singletons {
    private static Singletons ourInstance = new Singletons();

    public static Singletons getInstance() {
        return ourInstance;
    }

    private Singletons() {
    }

    private Klant gebruiker;

    public Klant getGebruiker() {
        return gebruiker;
    }

    public void setGebruiker(Klant gebruiker) {
        this.gebruiker = gebruiker;
    }
}

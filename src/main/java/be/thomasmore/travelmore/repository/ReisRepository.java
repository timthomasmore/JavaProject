package be.thomasmore.travelmore.repository;

import be.thomasmore.travelmore.domain.Reis;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Date;
import java.util.List;

public class ReisRepository {
    @PersistenceContext(unitName = "travelMorePU")
    private EntityManager entityManager;

    public List<Reis> findAll() {
        return entityManager.createNamedQuery(Reis.FIND_ALL, Reis.class).getResultList();
    }

    public List<Reis> find(String vertrek, String bestemming, int plaatsen, double maxPrijs, String transportmiddel) {
        return entityManager.createNamedQuery(Reis.FIND, Reis.class)
                .setParameter("vertrek", vertrek)
                .setParameter("bestemming", bestemming)
                .setParameter("plaatsen", plaatsen)
                .setParameter("maxPrijs", maxPrijs)
                .setParameter("transportMiddel", transportmiddel)
                .getResultList();
    }

    public Reis findById(int id) {
        return entityManager.createNamedQuery(Reis.FIND_BY_ID, Reis.class).setParameter("id", id).getSingleResult();
    }
}

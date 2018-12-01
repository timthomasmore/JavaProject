package be.thomasmore.travelmore.repository;

import be.thomasmore.travelmore.domain.Reis;

import javax.persistence.EntityManager;
import javax.persistence.NamedQuery;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.Date;
import java.util.List;

public class ReisRepository {
    @PersistenceContext(unitName = "travelMorePU")
    private EntityManager entityManager;

    public List<Reis> findAll() {
        return entityManager.createNamedQuery(Reis.FIND_ALL, Reis.class).getResultList();
    }

    public List<Reis> find(String vertrek, String bestemming, int plaatsen, double maxPrijs, String transportmiddel) {
        Reis.createSearchQuery(vertrek, bestemming, plaatsen, maxPrijs, transportmiddel);
        TypedQuery nq = entityManager.createQuery(Reis.FIND_QUERY, Reis.class);

        nq = vertrek == null ? nq : nq.setParameter("vertrek", "%" + vertrek.trim() + "%");
        nq = bestemming == null ? nq : nq.setParameter("bestemming", "%" + bestemming.trim() + "%");
        nq = plaatsen <= 0 ? nq : nq.setParameter("plaatsen", plaatsen);
        nq = maxPrijs <= 0 ? nq : nq.setParameter("maxPrijs", maxPrijs);
        nq = transportmiddel == null ? nq : nq.setParameter("transportmiddel", transportmiddel.trim());

        return nq.getResultList();
    }

    public Reis findById(int id) {
        return entityManager.createNamedQuery(Reis.FIND_BY_ID, Reis.class).setParameter("id", id).getSingleResult();
    }
}

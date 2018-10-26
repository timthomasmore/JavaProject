package be.thomasmore.travelmore.repository;

import be.thomasmore.travelmore.domain.Reis;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class ReisRepository {
    @PersistenceContext(unitName = "travelMorePU")
    private EntityManager entityManager;

    public List<Reis> findAll() {
        return entityManager.createNamedQuery(Reis.FIND_ALL, Reis.class).getResultList();
    }

    public Reis findById(int id) {
        return entityManager.createNamedQuery(Reis.FIND_BY_ID, Reis.class).setParameter("id", id).getSingleResult();
    }
}

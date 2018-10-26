package be.thomasmore.travelmore.repository;

import be.thomasmore.travelmore.domain.Klant;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class KlantRepository {@PersistenceContext(unitName = "travelMorePU")
private EntityManager entityManager;

    public Klant findById(int id) {
        return entityManager.find(Klant.class, id);
    }

    public List<Klant> findAll() {
        return entityManager.createNamedQuery(Klant.FIND_ALL, Klant.class).getResultList();
    }

    public Klant findByEmail(String email) {
        return entityManager.createNamedQuery(Klant.FIND_BY_EMAIL, Klant.class).setParameter("email", email).getSingleResult();
    }

    public Boolean emailAvailable(String email){
        return (entityManager.createNamedQuery(Klant.FIND_BY_EMAIL, Klant.class).setParameter("email", email).getResultList().size() == 0);
    }

    public void insert(Klant Klant) {
        entityManager.persist(Klant);
    }

}

package be.thomasmore.travelmore.service;

import be.thomasmore.travelmore.domain.Klant;
import be.thomasmore.travelmore.exceptions.AlreadyExistException;
import be.thomasmore.travelmore.repository.KlantRepository;

import javax.ejb.Stateless;
import javax.inject.Inject;
import java.util.List;

@Stateless
public class KlantService {
    @Inject
    private KlantRepository KlantRepository;

    public Klant findKlantById(int id) {
        return KlantRepository.findById(id);
    }

    public List<Klant> findAllKlanten() {
        return KlantRepository.findAll();
    }

    public Klant findKlantByEmail(String email) {
        return KlantRepository.findByEmail(email);
    }

    public Boolean emailAvailable (String email) {return KlantRepository.emailAvailable(email);}

    public void insert(Klant klant){
            KlantRepository.insert(klant);
    }

}

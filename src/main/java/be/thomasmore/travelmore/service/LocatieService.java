package be.thomasmore.travelmore.service;

import be.thomasmore.travelmore.domain.Locatie;
import be.thomasmore.travelmore.repository.LocatieRepository;

import javax.ejb.Stateless;
import javax.inject.Inject;
import java.util.List;

@Stateless
public class LocatieService {
    @Inject
    private LocatieRepository LocatieRepository;

    public Locatie findLocatieById(int id) {
        return LocatieRepository.findById(id);
    }

    public List<Locatie> findAllLocaties() {
        return LocatieRepository.findAll();
    }

    public Locatie findLocatieByCode(String code) {
        return LocatieRepository.findByCode(code);
    }

    public void updateName(int id, String newName) {
        Locatie Locatie = LocatieRepository.findById(id);
        Locatie.setNaam(newName);
    }

    public void insert(Locatie Locatie) {
        LocatieRepository.insert(Locatie);
    }

}

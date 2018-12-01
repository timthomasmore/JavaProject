package be.thomasmore.travelmore.service;

import be.thomasmore.travelmore.domain.Reis;
import be.thomasmore.travelmore.repository.ReisRepository;

import javax.ejb.Stateless;
import javax.inject.Inject;
import java.util.List;

@Stateless
public class ReisService {
    @Inject
    private ReisRepository reisRepository;

    public List<Reis> findAllReizen(){return reisRepository.findAll();}
    public List<Reis> findReizen(String vertrek, String bestemming, int plaatsen, double maxPrijs, String transportmiddel){
        return reisRepository.find(vertrek, bestemming, plaatsen, maxPrijs, transportmiddel);
    }
    public Reis findById(int id){return reisRepository.findById(id);}
}

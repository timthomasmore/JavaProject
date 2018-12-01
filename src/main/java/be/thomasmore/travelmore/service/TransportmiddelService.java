package be.thomasmore.travelmore.service;

import be.thomasmore.travelmore.domain.Transportmiddel;
import be.thomasmore.travelmore.repository.TransportmiddelRepository;

import javax.ejb.Stateless;
import javax.inject.Inject;
import java.util.List;

@Stateless
public class TransportmiddelService {

    @Inject
    private TransportmiddelRepository transportmiddelRepository;

    public List<Transportmiddel> findAllTransportmiddelen(){return transportmiddelRepository.findAll();}
}

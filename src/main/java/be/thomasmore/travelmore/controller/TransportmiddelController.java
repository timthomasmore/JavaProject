package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Transportmiddel;
import be.thomasmore.travelmore.service.TransportmiddelService;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;
import java.util.List;

@ManagedBean
@SessionScoped
public class TransportmiddelController {

    @Inject
    private TransportmiddelService transportmiddelService;
    private List<Transportmiddel> transportmiddelen;

    public List<Transportmiddel> getTransportmiddelen() {
        return this.transportmiddelService.findAllTransportmiddelen();
    }

    public void setTransportmiddelen(List<Transportmiddel> transportmiddelen) {
        this.transportmiddelen = transportmiddelen;
    }
}

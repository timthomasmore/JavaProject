package be.thomasmore.travelmore.rest;

import be.thomasmore.travelmore.domain.Reis;
import be.thomasmore.travelmore.service.ReisService;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/reizen")
public class ReisRestService {

    @Inject
    private ReisService reisService;

    @GET
    @Path("/getreizen")
    @Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
    public List<Reis> getLocationById(@QueryParam("id") int id) {
        return reisService.findAllReizen();
    }
}

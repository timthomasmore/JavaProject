package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Reis;
import be.thomasmore.travelmore.service.KlantService;
import be.thomasmore.travelmore.utility.AuthenticationService;

import javax.annotation.Resource;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.inject.Inject;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@ViewScoped
@ManagedBean
public class BoekingController {
    @Resource(name = "java:jboss/mail/gmail")
    private Session session;

    @Inject
    private AuthenticationService authService;

    public BoekingController() {
    }

    public String boekReis(int betaalmethode, Reis reis) {
        // Send email
        String to = authService.getKlant().getEmail();
        String body = "Dag " + authService.getKlant().getVoornaam() + "!";
        body += "\n\nHierbij bevestigen wij jouw boeking van onderstaande reis:";
        body += "\n\nJe vertrekt vanuit: " + reis.getVertrekLocatie().getNaam() + ".";
        body += "\nJe bestemming is: " + reis.getBestemmingLocatie().getNaam() + ".";
        body += "\nJe vertrekt om " + reis.getVertrekUur() + " op " + reis.getVertrekDatum() + ".";
        body += "\nJe vervoersmiddel is: " + reis.getTransportMiddel().getNaam() + ".";
        body += "\n\nGoede reis!";
        body += "\nMet vriendelijke groeten";
        body += "\n\nTropical Travel";
        sendMail(to, "Bevestiging", body);

        return "boekingBevestiging";
    }

    private void sendMail(String to, String subject, String body) {
        try {
            Message message = new MimeMessage(session);
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(body);

            Transport.send(message);
            System.out.println("Mail sent!");
        } catch (MessagingException e) {
            System.out.println("Error sending mail!");
            System.out.println(e);
        }
    }
}

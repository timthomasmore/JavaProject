package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Reis;

import javax.annotation.Resource;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
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

    public BoekingController() {
    }

    public String boekReis(int betaalmethode, Reis reis) {
        
        // Send email
        sendMail("synaevejoren@gmail.com", "Bevestiging", "U hebt bevestigd!");

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

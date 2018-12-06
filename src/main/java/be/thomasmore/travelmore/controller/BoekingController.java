package be.thomasmore.travelmore.controller;

import be.thomasmore.travelmore.domain.Reis;
import be.thomasmore.travelmore.service.KlantService;
import be.thomasmore.travelmore.utility.AuthenticationService;
import be.thomasmore.travelmore.utility.PdfMaker;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.annotation.Resource;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.inject.Inject;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Properties;

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
        PdfMaker pdfMaker = new PdfMaker();
        try{
            pdfMaker.boekingspdf(reis, authService.getKlant());
        } catch (Exception e){
            System.out.println(e);
        }

        String pdfnaam = System.getProperty("user.dir") + "/reis" + reis.getId() + "-" + authService.getKlant().getId()  + ".pdf";

        final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
        Properties props = System.getProperties();
        props.setProperty("mail.smtp.host", "smtp.gmail.com");
        props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty("mail.smtp.port", "465");
        props.setProperty("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.auth", "true");
        props.put("mail.debug", "true");
        props.put("mail.store.protocol", "pop3");
        props.put("mail.transport.protocol", "smtp");
        final String username = "groep4javaproject@gmail.com";//
        final String password = "JavaProjectGroep4+";
        try {
            session = Session.getDefaultInstance(props,
                    new Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(username, password);
                        }
                    });
        }catch (Exception e) {
            System.out.println("Error sending mail!");
            System.out.println(e);
        }



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
        sendMail(to, "Bevestiging", body,pdfnaam);

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

    private void sendMail(String to, String subject, String body, String attachmentpath) {
        try {


            Message message = new MimeMessage(session);
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);

            BodyPart messageBodyPart = new MimeBodyPart();
            messageBodyPart.setText(body);

            Multipart multipart = new MimeMultipart();
            multipart.addBodyPart(messageBodyPart);

            messageBodyPart = new MimeBodyPart();
            String filename = attachmentpath;
            DataSource source = new FileDataSource(filename);
            messageBodyPart.setDataHandler(new DataHandler(source));
            messageBodyPart.setFileName(filename);
            multipart.addBodyPart(messageBodyPart);

            message.setContent(multipart);

            Transport.send(message);
            System.out.println("Mail sent!");
        } catch (MessagingException e) {
            System.out.println("Error sending mail!");
            System.out.println(e);
        }
    }
}

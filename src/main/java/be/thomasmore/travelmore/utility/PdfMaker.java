package be.thomasmore.travelmore.utility;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;

import be.thomasmore.travelmore.domain.*;
import be.thomasmore.travelmore.service.KlantService;
import be.thomasmore.travelmore.service.LocationService;
import be.thomasmore.travelmore.service.ReisService;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfWriter;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;


public class PdfMaker  {


    public void boekingspdf (Reis reis, Klant gebruiker) throws DocumentException, FileNotFoundException {

        Document document = new Document();
        PdfWriter.getInstance(document, new FileOutputStream(System.getProperty("user.dir") + "/reis" + reis.getId() + "-" + gebruiker.getId()  + ".pdf"));


        document.open();

        PdfWriter.getInstance(document, new FileOutputStream("iTextImageExample.pdf"));
        document.open();

        try {
            Image img = Image.getInstance("../../../projects/travelmore.PNG");
            img.scalePercent(25);

            document.add(img);
        } catch (Exception e){
            System.out.println(e);
        }

        Font font = FontFactory.getFont(FontFactory.COURIER, 24, BaseColor.BLACK);
        Paragraph chunk = new Paragraph("Je reis is geboekt\n", font);
        document.add(chunk);

        Paragraph paragraph = new Paragraph();
        paragraph.add(new Paragraph(" "));
        document.add(paragraph);

        font = FontFactory.getFont(FontFactory.COURIER, 16, BaseColor.BLACK);
        paragraph.add(new Paragraph( "Je vertrekt vanuit: " + reis.getVertrekLocatie().getNaam() + ".\n", font));

        paragraph.add(new Paragraph(" "));

        font = FontFactory.getFont(FontFactory.COURIER, 16, BaseColor.BLACK);
        paragraph.add(new Paragraph( "Je bestemming is: " + reis.getBestemmingLocatie().getNaam() + ".\n", font));

        paragraph.add(new Paragraph(" "));

        font = FontFactory.getFont(FontFactory.COURIER, 16, BaseColor.BLACK);
        paragraph.add(new Paragraph( "Je vertrekt om " + reis.getVertrekUur() + " op " + reis.getVertrekDatum() + ".\n", font));

        paragraph.add(new Paragraph(" "));

        font = FontFactory.getFont(FontFactory.COURIER, 16, BaseColor.BLACK);
        paragraph.add(new Paragraph( "Je vervoersmiddel is: " + reis.getTransportMiddel().getNaam() + ".\n", font));

        paragraph.add(new Paragraph(" "));

        font = FontFactory.getFont(FontFactory.COURIER, 16, BaseColor.BLACK);
        paragraph.add(new Paragraph( "De reis kost: €" + reis.getPrijs() + ".\n", font));

        paragraph.add(new Paragraph(" "));
        document.add(paragraph);

        document.close();

        System.out.println("Working Directory = " +
                System.getProperty("user.dir"));
    }
}
package com.project.flightreservation.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import org.springframework.stereotype.Component;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.project.flightreservation.entities.Reservation;

@Component
public class PDFGenerator {
	
	public void generateItinerary(Reservation reservation ,String filepath) {
		
		Document document = new Document();
		
		try {
			PdfWriter.getInstance(document, new FileOutputStream(filepath));
			
			document.open();
			
			document.add(generateTable(reservation));
			document.close();
			
		} catch (FileNotFoundException | DocumentException e) {
			e.printStackTrace();
		}
	}

	private PdfPTable generateTable(Reservation reservation) {
		
		PdfPTable table = new PdfPTable(2);
		PdfPCell cell;
		cell =new PdfPCell(new Phrase("Flight Itinerary"));
		cell.setColspan(2);
		table.addCell(cell);
		
		cell =new PdfPCell(new Phrase("Flight Details"));
		cell.setColspan(2);
		table.addCell(cell);
		
		
		table.addCell("Departure city");
		table.addCell(reservation.getFlight().getDeparture_city());
		
		table.addCell("Arrival city");
		table.addCell(reservation.getFlight().getArrival_city());
		
		table.addCell("Departure date");
		table.addCell(reservation.getFlight().getDate_of_departure().toString());
		
		table.addCell("Departure time");
		table.addCell(reservation.getFlight().getDeparture_time().toString());
		
		
		cell =new PdfPCell(new Phrase("Passenge Details"));
		cell.setColspan(2);
		table.addCell(cell);
		
		table.addCell("First name");
		table.addCell(reservation.getPassenger().getFirst_name());
		
		table.addCell("Last name");
		table.addCell(reservation.getPassenger().getLast_name());
		
		table.addCell("Email");
		table.addCell(reservation.getPassenger().getEmail());
		
		table.addCell("Phone");
		table.addCell(reservation.getPassenger().getPhone());
		
		return table;
	}

}

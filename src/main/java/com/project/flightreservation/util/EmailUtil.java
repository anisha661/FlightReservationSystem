package com.project.flightreservation.util;

import java.io.File;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class EmailUtil {
	
	@Autowired
	private JavaMailSender sender;
	
	public void sendItinerary(String toAddress ,String filepath) {
	
		MimeMessage msg=sender.createMimeMessage();
		
		try {
			MimeMessageHelper messageHelper=new MimeMessageHelper(msg,true);
			messageHelper.setTo(toAddress);
			messageHelper.setSubject("Flight details!!!!");
			messageHelper.setText("Please find your flight details attached");
			messageHelper.addAttachment("Itinerary", new File(filepath));
			sender.send(msg);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

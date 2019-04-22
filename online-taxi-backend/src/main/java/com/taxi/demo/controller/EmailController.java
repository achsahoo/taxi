package com.taxi.demo.controller;

import java.util.ArrayList;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;

import com.taxi.demo.Entity.BookingDetails;
import com.taxi.demo.Entity.UserDetails;
import com.taxi.demo.Entity.VehicleAreaPrice;
import com.taxi.demo.service.EmailService;
import com.taxi.demo.service.TaxiService;

@Controller
public class EmailController {

	@Autowired
	private JavaMailSender sender;

	@Autowired
	private EmailService emailService;

	@Autowired
	TaxiService taxiService;

	// email sending to customer
	public void sendcustomer(UserDetails user, BookingDetails bookde, VehicleAreaPrice vehicleAreaPrice)
			throws MessagingException {

		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		helper.setTo(user.getEmailId());
		helper.setText("Dear " + user.getCustomerName()
				+ ",\n\nThank you for your Booking.\n\nBooking Success and your Booking ID is: ATX"
				+ bookde.getRefid() + "\n\nAmount to be paid Rs:" + bookde.getPrice()
				+ "\n\nNote :Our Representative Will Get in Touch with you to Confirm Booking."
				+ "\n\nHave question?contact us via phone:+918763815666\n\nemail your queries to : airport.taxi@gmail.com"
				+ "\n\nWebsite:bhubaneswarairporttaxi.in");
		helper.setSubject("Booking Confirmation from ONLINETAXI");

		sender.send(message);

	}

	// send mail to admin
	public void sendadmin(UserDetails user, BookingDetails bookingDetails, VehicleAreaPrice vehicleAreaPrice)
			throws MessagingException {
		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true);
//	        FileSystemResource file = new FileSystemResource("D:\\new1.pdf");
		helper.setTo(user.getEmailId());
		ArrayList<String> allMail = emailService.allEmail();

		for (String em : allMail) {


				helper.setTo(em);
				helper.setText("There is a new booking from " + user.getCustomerName() + "\nReference ID :"
						+ bookingDetails.getRefid() + "\nPickup From :"+bookingDetails.getPickuplocation()+ "\nDestination : "
						+ bookingDetails.getDestination() + "\nPickup Date: " + bookingDetails.getBookingDate()
						+ "\nPickup Time: " + bookingDetails.getBookingTime() + "\nNumber of Bags: "
						+ bookingDetails.getNumberOfBag() + "\nNumber of passangers: " + bookingDetails.getNumberOfPax()
						+ "\nNumber of cars: " + bookingDetails.getNumberOfVehicle() + "\nCar Type: "
						+ vehicleAreaPrice.getVehicletype() + "\nContact No: " + user.getMobileNumber()
						+ "\nAmount to be paid Rs:" + bookingDetails.getPrice());

				
				helper.setSubject("Booking Request from a new customer");

//	        		helper.addAttachment(file.getFilename(), file);

//	            } 
//	        	catch (MessagingException e)
//	        	{
//	                e.printStackTrace();
//	                return "Error while sending mail ..";
//	            }
				sender.send(message);
//			

		}
	}
	
	
	
	// email sending to customer after assign
		public void assignmail(UserDetails user, BookingDetails bookde, VehicleAreaPrice vehicleAreaPrice)
				throws MessagingException {

			MimeMessage message = sender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message);
			ArrayList<String> allMail=emailService.finduseremail();
			
			for (String em : allMail) {
				System.out.println("email:"+em);
			helper.setTo(em);
			helper.setText("Driver Ph.no:-"+bookde.getDriverno()+"Car no.:-"+bookde.getVehicleno());
			helper.setSubject("Booking Confirmation from ONLINETAXI");
			sender.send(message);

		}
		}
		
		
		
		
		
}

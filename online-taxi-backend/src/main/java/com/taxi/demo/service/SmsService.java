package com.taxi.demo.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.taxi.demo.Entity.AdminDetails;
import com.taxi.demo.Entity.BookingDetails;
import com.taxi.demo.Entity.UserDetails;
import com.taxi.demo.Entity.VehicleAreaPrice;

@Service
public class SmsService {
	

	@Autowired
	private EmailService emailService;
	
	//send sms
	public void SendSms(AdminDetails admin,BookingDetails bookingDetails,UserDetails user,VehicleAreaPrice vehicleAreaPrice) {
	   //getting all number from database
		ArrayList<String> allno=emailService.allnunmber();
		for(String no:allno)
		{
		
	String userId = "prasants";
	String password = "prasant123";
	String route="2";
	String senderId = "ARTAXI";
	String message = "Booking Details-\nName: "+user.getCustomerName()+"\nPh.No: "+user.getMobileNumber()+"\nTo: "+bookingDetails.getDestination()+"\nFrom: "+bookingDetails.getPickuplocation()+"\nDate: "+bookingDetails.getBookingDate()+"\nTime: "+bookingDetails.getBookingTime()+"\nType: "+vehicleAreaPrice.getVehicletype()+"\nCar needed: "+bookingDetails.getNumberOfVehicle()+"\nAmount to be paid Rs:"+bookingDetails.getPrice();
	URLConnection myURLConnection=null;
    URL myURL=null;
    BufferedReader reader=null;
    @SuppressWarnings("deprecation")
	String encoded_message=URLEncoder.encode(message);    
    String mainUrl="http://sms.cheapsmsindia.in/composeapi/?";
	StringBuilder sb= new StringBuilder(mainUrl);
	sb.append("&userid="+userId);
	sb.append("&pwd="+password);
	sb.append("&route="+route);
	sb.append("&senderid="+senderId);
	sb.append("&destination="+no);
	sb.append("&message="+encoded_message);
	mainUrl = sb.toString();
	System.out.println("message:"+encoded_message);
	System.out.println("number is:  "+no);
	
	try
    {
        myURL = new URL(mainUrl);
        myURLConnection = myURL.openConnection();
        myURLConnection.connect();
        reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
        String response;
        while ((response = reader.readLine()) != null)  
        System.out.println(response);
        System.out.println("success");
        reader.close();
    } 
    catch (IOException e) 
    { 
    	e.printStackTrace();
    }
    
    }}}

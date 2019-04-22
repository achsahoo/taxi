package com.taxi.demo.controller;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.taxi.demo.Entity.AdminDetails;
import com.taxi.demo.Entity.BookingDetails;
import com.taxi.demo.Entity.OutstationDetails;
import com.taxi.demo.Entity.UserDetails;
import com.taxi.demo.Entity.VehicleAreaPrice;
import com.taxi.demo.service.EmailService;
import com.taxi.demo.service.OutstationService;
import com.taxi.demo.service.SmsService;
import com.taxi.demo.service.TaxiService;

@Controller
public class TaxiController {

	@Autowired
	private TaxiService taxiservice;
	
	
	@Autowired
	private EmailController emailController;
	
	@Autowired
	private SmsService smsService;
	
	@Autowired
	private OutstationService outstationService;
	
	//booking page
	
	@RequestMapping(value="booktaxi",method=RequestMethod.GET)
	 public	String booking()

	 {
		
		 return "local_booking";
	 }
	
	
	
	//index page
		
		@RequestMapping(value="welcome",method=RequestMethod.GET)
		 public	String show()

		 {
			
			 return "save";
		 }

	//	area in dropdown
	@ResponseBody
	@ModelAttribute("area")
	public List<VehicleAreaPrice> findTyreAre(HttpServletRequest request){
		List<VehicleAreaPrice> listdto=null ;
		
		try{
		//get All area 
		listdto=taxiservice.showArea();
		}
		catch(Exception e){
			request.setAttribute("area","INTERNAL SOME PROBLEM");
			return listdto;
		}
	
		return listdto;
	}
	
	
	
//	area in dropdown out station
	@ResponseBody
	@ModelAttribute("outarea")
	public List<OutstationDetails> findTyreArea(HttpServletRequest request,Map<Object,String> map){
		List<OutstationDetails> listdto=null;
		try{
		//get All area 
		listdto=outstationService.showArea();
		}
		catch(Exception e){
			request.setAttribute("outarea","INTERNAL SOME PROBLEM");
			return listdto;
		}
	
		return listdto;
	}
	
	
	
	//vehicle type after selecting area
		@ResponseBody
		@GetMapping("/vehicleAndArea/{area}")
		public List<String>  VehicleByArea(@PathVariable("area")String area,HttpServletRequest request){
			
			List<String> listVehicle=null;
			listVehicle =new ArrayList<>();
			try {
				listVehicle =taxiservice.ListVehicleType(area);
			
			}
			 catch(Exception e){
					request.setAttribute("area","INTERNAL SOME PROBLEM");
					return listVehicle;	
					
			 }
			System.out.println("vehicle "+listVehicle);
			return listVehicle;
			}
		
		
		
		//price after selecting area and vehicle type
		@ResponseBody
		@RequestMapping(value="/vehicleAndAreaPrice/{area},{vehicletype}",method=RequestMethod.GET)
		public Double priceByAreaAndVehicle(@PathVariable("area")String area,@PathVariable("vehicletype")String vehicletype){

			Double price=taxiservice.priceByAreaAndVehicle(area, vehicletype);
			double i=price+(price*0.05)+35;
			return i;
		}
		
	
		@ResponseBody
		@RequestMapping(value="/pricevehicle/{price},{novehicle}",method=RequestMethod.GET)
		public Double priceByvehicle(@PathVariable("price")String price,@PathVariable("novehicle")String novehicle){

			
			double pr=Double.parseDouble(price);
			double ve=Double.parseDouble(novehicle);
			double i=pr*ve;
			return i;
			
		}
		
	
	//add data and send email
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String userDetails(@ModelAttribute UserDetails user,@ModelAttribute BookingDetails book,@ModelAttribute VehicleAreaPrice vehicleAreaPrice,AdminDetails admin,@ModelAttribute OutstationDetails outstationDetails,HttpServletRequest req) throws MessagingException
	{
		
		
	
		
		try {    
		taxiservice.adduser(user);
	    taxiservice.addbooking(book,vehicleAreaPrice,outstationDetails);
//	    emailController.sendadmin(user,book,vehicleAreaPrice);
//      emailController.sendcustomer(user,book,vehicleAreaPrice);
//     	smsService.SendSms(admin,book,user,vehicleAreaPrice);
	    
	    
	    
	   
		
		req.setAttribute("book", "Successfully Placed.Futher info. You will get in mail");
		return "save";
		}
		catch(Exception e) {
			
			System.out.println("Exception");
			e.printStackTrace();
			req.setAttribute("book1", "Successfully Placed.Futher info. You will get in mail");
			return "save";
		}
		
		
	}
	
	//pos booking
	@RequestMapping(value="/possave",method=RequestMethod.POST)
	public String possave(@ModelAttribute UserDetails user,@ModelAttribute BookingDetails book,@ModelAttribute VehicleAreaPrice vehicleAreaPrice,HttpServletRequest req,@ModelAttribute OutstationDetails outstationDetails) throws MessagingException
	{
		
		
	
		
		    
		taxiservice.adduser(user);
	    taxiservice.posbooking(book,vehicleAreaPrice,outstationDetails);
		req.setAttribute("book", "Successfully Placed");
		req.setAttribute("books", taxiservice.showBooking());
		
		
	return "viewlist";
}
	
	
}

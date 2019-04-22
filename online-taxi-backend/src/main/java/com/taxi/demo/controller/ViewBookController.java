package com.taxi.demo.controller;
import java.util.Optional;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.taxi.demo.Entity.BookingDetails;
import com.taxi.demo.Entity.UserDetails;
import com.taxi.demo.Entity.VehicleAreaPrice;
import com.taxi.demo.dao.TaxiRepository;
import com.taxi.demo.service.OutstationService;
import com.taxi.demo.service.TaxiService;

@Controller
public class ViewBookController {

	@Autowired
	private TaxiService taxiservice;
	
	@Autowired
	private EmailController emailController;
	
	
	@Autowired
	private OutstationService outstationService;

	// pos booking page
	@GetMapping("/newbooking")
	public String newbooking(HttpServletRequest request) {
		
		HttpSession session = null;

		// create Session object
		session = request.getSession(false);
		String admin = (String) session.getAttribute("admin");
		try {
			// test the session is equals to admin or null if admin null then it goes to
			// catch block
			if (admin.equals("admin")) {
		request.setAttribute("area", taxiservice.showArea());
		request.setAttribute("outarea", outstationService.showArea());
		request.setAttribute("mode", "NEW_BOOK");
			}
			return "posbook";
		} catch (Exception e) {
			request.setAttribute("SessionTimeOut", "Should enter Username and Password");
			// RETURN LOGIN JSP PAGES
			return "login";
		}
			
	}

	// show all list
	@GetMapping("/viewall")
	public String viewall(@ModelAttribute BookingDetails book, HttpServletRequest request) {

		HttpSession session = null;

		// create Session object
		session = request.getSession(false);
		String admin = (String) session.getAttribute("admin");
		try {
			// test the session is equals to admin or null if admin null then it goes to
			// catch block
			if (admin.equals("admin")) {
			request.setAttribute("books", taxiservice.showBooking());
			}
			return "viewlist";
			// RETURN TYREREG JSP PAGES

		} catch (Exception e) {
			request.setAttribute("SessionTimeOut", "Should enter Username and Password");
			// RETURN LOGIN JSP PAGES
			return "login";
		}

	}

	// findbyid
	@GetMapping("/findone")
	public String findbyid(HttpServletRequest request, @RequestParam("id") Long id) {
		BookingDetails bookingDetails = new BookingDetails();
		HttpSession session = null;

		// create Session object
		session = request.getSession(false);
		String admin = (String) session.getAttribute("admin");
		try {
			// test the session is equals to admin or null if admin null then it goes to
			// catch block
			if (admin.equals("admin")) {
		Optional<BookingDetails> detail = taxiservice.showbyid(id);
		bookingDetails = detail.get();
		request.setAttribute("books", bookingDetails);
			}
		return "editpage";
		} catch (Exception e) {
			request.setAttribute("SessionTimeOut", "Should enter Username and Password");
			// RETURN LOGIN JSP PAGES
			return "login";
		}
	}

	// update data
	@PostMapping("/updated")
	public String updated(@ModelAttribute BookingDetails book, HttpServletRequest request,
			@ModelAttribute VehicleAreaPrice vehicleAreaPrice,@ModelAttribute UserDetails user) throws MessagingException {
		HttpSession session = null;

		// create Session object
		session = request.getSession(false);
		String admin = (String) session.getAttribute("admin");
//		try {
//			// test the session is equals to admin or null if admin null then it goes to
//			// catch block
			if (admin.equals("admin")) {
				if(book.getStatus().equalsIgnoreCase("Assign"))
			    {
			    emailController.assignmail(user,book,vehicleAreaPrice);
			    }
		
				taxiservice.updatenew(book);
		request.setAttribute("books", taxiservice.showBooking());
		return "viewlist";
			}
		
//	} catch (Exception e) {
		else
		{request.setAttribute("SessionTimeOut", "Should enter Username and Password");
		// RETURN LOGIN JSP PAGES
		System.out.println(" 3 "+book.getStatus());
		return "login";}
	}}
//}}

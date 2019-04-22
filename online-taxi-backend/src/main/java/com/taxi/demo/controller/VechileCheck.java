package com.taxi.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.taxi.demo.service.TaxiService;

@Controller
public class VechileCheck {

	@Autowired
	private TaxiService taxiService;
	
	@GetMapping("/findvehicle")
	public String findvehicle(HttpServletRequest req)
	{
		String num=req.getParameter("vehicleno");
		System.out.println(num);
//		taxiService.findvehicle(num);
		return "editpage";
	}
}

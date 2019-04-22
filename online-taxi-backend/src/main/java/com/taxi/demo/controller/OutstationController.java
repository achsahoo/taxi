package com.taxi.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.taxi.demo.Entity.OutstationDetails;
import com.taxi.demo.service.OutstationService;

@Controller
public class OutstationController {
	
	
	@Autowired
	private OutstationService outstationService;
	
	
	
//	area in dropdown
	@ResponseBody
	@ModelAttribute("outarea")
	public List<OutstationDetails> findTyreArea(HttpServletRequest request){
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
		@GetMapping("/outvehicleAndArea/{area}")
		public List<String>  VehicleByArea(@PathVariable("area")String area,HttpServletRequest request){
			
			List<String> listVehicle=null;
			listVehicle =new ArrayList<>();
			try {
				listVehicle =outstationService.ListVehicleType(area);
			
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
		@RequestMapping(value="/outvehicleAndAreaPrice/{area},{vehicletype}",method=RequestMethod.GET)
		public Double priceByAreaAndVehicle(@PathVariable("area")String area,@PathVariable("vehicletype")String vehicletype){

			Double price=outstationService.priceByAreaAndVehicle(area, vehicletype);
			double i=price+(price*0.05)+35;
			return i;
		}

}

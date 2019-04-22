package com.taxi.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taxi.demo.Entity.OutstationDetails;
import com.taxi.demo.dao.OutStationRepository;

@Service
public class OutstationService {
	
	
	
	@Autowired
	private OutStationRepository outStationRepository;
	
	
	
	
	
	
	// service for show area in dropdown
		public List<OutstationDetails> showArea() {
			List<Object[]> listObject = null;
			List<OutstationDetails> listarea = new ArrayList<>();
			listObject = outStationRepository.areafind();

			for (Object obj : listObject) {

				OutstationDetails areade = new OutstationDetails();
				String areatype = (String) obj;
				areade.setOutarea(areatype);
				listarea.add(areade);
			}

			return listarea;
		}

		// show vehicle type after area
		public List<String> ListVehicleType(String area) {

			List<String> liststring = null;

//				List<VehicleAreaPrice> listVehicle =null;			
//				listVehicle=new ArrayList<VehicleAreaPrice>();

			liststring = outStationRepository.vehicleByArea(area);

			for (Object obj : liststring) {
				OutstationDetails pricede = new OutstationDetails();
				String vehicletype = (String) obj;
				pricede.setVehicle(vehicletype);
//					listVehicle.add(pricede);

			}

			return liststring;

		}

		// price after area and vehicle
		public Double priceByAreaAndVehicle(String area, String vehicletype) {
			Double price = 0.0;
//		  		System.out.println(area);
//		  		System.out.println(vehicletype);
			price = outStationRepository.priceByAreaAndVehicleType(area, vehicletype);
//		  		System.out.println(" PRICE "+price);
			return price;
		}

}

package com.taxi.demo.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taxi.demo.Entity.BookingDetails;
import com.taxi.demo.Entity.OutstationDetails;
import com.taxi.demo.Entity.UserDetails;
import com.taxi.demo.Entity.VehicleAreaPrice;
import com.taxi.demo.dao.BookingRepository;
import com.taxi.demo.dao.TaxiRepository;

@Service
public class TaxiService {

	@Autowired
	private TaxiRepository taxiRepository;

	@Autowired
	private BookingRepository bookingRepository;

	// trip id
	public int refid() {
		Random r = new Random(System.currentTimeMillis());
		int random = 100000 + r.nextInt(200000);
		return random;
	}

	// service for show area in dropdown
	public List<VehicleAreaPrice> showArea() {
		List<Object[]> listObject = null;
		List<VehicleAreaPrice> listarea = new ArrayList<>();
//			listarea=new ArrayList<VehicleAreaPrice>();

		listObject = taxiRepository.areafind();

		for (Object obj : listObject) {

			VehicleAreaPrice pricede = new VehicleAreaPrice();
			String areatype = (String) obj;
			pricede.setArea(areatype);
			listarea.add(pricede);
		}
		return listarea;
	}

	// show vehicle type after area
	public List<String> ListVehicleType(String area) {

		List<String> liststring = null;

//			List<VehicleAreaPrice> listVehicle =null;			
//			listVehicle=new ArrayList<VehicleAreaPrice>();

		liststring = taxiRepository.vehicleByArea(area);

		for (Object obj : liststring) {
			VehicleAreaPrice pricede = new VehicleAreaPrice();
			String vehicletype = (String) obj;
			pricede.setVehicletype(vehicletype);
//				listVehicle.add(pricede);

		}

		return liststring;

	}

	// price after area and vehicle
	public Double priceByAreaAndVehicle(String area, String vehicletype) {
		Double price = 0.0;
//	  		System.out.println(area);
//	  		System.out.println(vehicletype);
		price = taxiRepository.priceByAreaAndVehicleType(area, vehicletype);
//	  		System.out.println(" PRICE "+price);
		return price;
	}

	// add data of user
	public void adduser(UserDetails user) {

		taxiRepository.save(user);

	}

	// add booking details
	public void addbooking(BookingDetails book, VehicleAreaPrice vehicleAreaPrice,
			OutstationDetails outstationDetails) {

		String a = "Small(price not Available),Big(price not Available)";
		String random = "ATX" + refid();
		book.setRefid(random);
		if (book.getAirport().equalsIgnoreCase("from")) {

			if (vehicleAreaPrice.getArea() != "") {
				book.setPickuplocation("Bhubaneswar Airport");
				book.setDestination(vehicleAreaPrice.getArea());

				if (a.equalsIgnoreCase(vehicleAreaPrice.getArea())) {
					book.setDestination("Not Given");
					bookingRepository.save(book);
				} else {
					bookingRepository.save(book);
				}
			}

			else {
				book.setPickuplocation("Bhubaneswar Airport");
				book.setDestination(outstationDetails.getOutarea());

				bookingRepository.save(book);
			}
		}

		else {

			if (vehicleAreaPrice.getArea() != "")

			{
				book.setPickuplocation(vehicleAreaPrice.getArea());
				book.setDestination("Bhubaneswar Airport");
				if (a.equalsIgnoreCase(vehicleAreaPrice.getArea())) {
					book.setPickuplocation("Not Given");
					bookingRepository.save(book);
				} else {
					bookingRepository.save(book);
				}

				bookingRepository.save(book);
			}

			else

			{
				book.setPickuplocation(outstationDetails.getOutarea());
				book.setDestination("Bhubaneswar Airport");
				bookingRepository.save(book);
			}
		}

	}

	// show bookingdetails
	public Iterable<BookingDetails> showBooking() {
		// TODO Auto-generated method stub
		return bookingRepository.findAll();
	}

	public Iterable<UserDetails> showUser() {
		// TODO Auto-generated method stub
		return taxiRepository.findAll();
	}

	// show booking by id
	public Optional<BookingDetails> showbyid(Long id) {

		return bookingRepository.findById(id);
	}

	// update new value
	public void updatenew(BookingDetails book) {

		bookingRepository.save(book);
	}

	// add booking details from pos
	public void posbooking(BookingDetails book, VehicleAreaPrice vehicleAreaPrice,
			OutstationDetails outstationDetails) {

		String random = "ATX" + refid();
		book.setRefid(random);

		book.setPickuplocation("Bhubaneswar Airport");

		if (outstationDetails.getOutarea().equalsIgnoreCase("")) {
			book.setDestination(vehicleAreaPrice.getArea());

		} else {
			book.setDestination(outstationDetails.getOutarea());
		}

		bookingRepository.save(book);

	}

	// delete booking details from list
	public void deletebyid(Long id) {

		bookingRepository.deleteById(id);

	}

}
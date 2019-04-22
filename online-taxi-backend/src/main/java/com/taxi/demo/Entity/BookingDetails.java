package com.taxi.demo.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name="booking_details")
public class BookingDetails {

	@Id
	@OnDelete(action = OnDeleteAction.CASCADE)
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="trip_id" )
	private Long tripId;
	
	
	@Column(name="ref_id" )
	private String refid;
	
	@Column(name="destination" )
	private String destination;
	
	
	
	@Column(name="airport" )
	private String airport;
 
	@Column(name="customerName" )
	private String customerName;
	
	@Column(name="pickup_date" )
	private String bookingDate;
	
	@Column(name="pickuplocation" )
	private String pickuplocation;
	
	@Column(name="address" )
	private String address;
	
	@Column(name="pickup_time" )
	private String bookingTime;
	
	@Column(name="numberofpax" )
	private String numberOfPax;
	
	@Column(name="numberofbag" )
	private String numberOfBag;
	
	@Column(name="numberofvehicle" )
	private String numberOfVehicle;
	
	@Column(name="price" )
	private String price;

	@Column(name="flightno" )
	private Long flightNo;
	
	@Column(name="flighttime" )
	private String flightTime;
	
	@Column(name="flightdate" )
	private String flightDate;
	
	@Column(name="drivername" )
	private String drivername;
	
	
	@Column(name="vehicleno" )
	private String vehicleno;
	
	@Column(name="driverno" )
	private String driverno;
	
	@Column(name="status" )
	private String status;
	
		
	public Long getTripId() {
		return tripId;
	}

	public void setTripId(Long tripId) {
		this.tripId = tripId;
	}
	

	public String getRefid() {
		return refid;
	}

	public void setRefid(String refid) {
		this.refid = refid;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getBookingTime() {
		return bookingTime;
	}

	public void setBookingTime(String bookingTime) {
		this.bookingTime = bookingTime;
	}

	public String getNumberOfPax() {
		return numberOfPax;
	}

	public void setNumberOfPax(String numberOfPax) {
		this.numberOfPax = numberOfPax;
	}

	public String getNumberOfBag() {
		return numberOfBag;
	}

	public void setNumberOfBag(String numberOfBag) {
		this.numberOfBag = numberOfBag;
	}

	public String getNumberOfVehicle() {
		return numberOfVehicle;
	}

	public void setNumberOfVehicle(String numberOfVehicle) {
		this.numberOfVehicle = numberOfVehicle;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Long getFlightNo() {
		return flightNo;
	}

	public void setFlightNo(Long flightNo) {
		this.flightNo = flightNo;
	}

	public String getFlightTime() {
		return flightTime;
	}

	public void setFlightTime(String flightTime) {
		this.flightTime = flightTime;
	}

	public String getFlightDate() {
		return flightDate;
	}

	public void setFlightDate(String flightDate) {
		this.flightDate = flightDate;
	}

	

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getPickuplocation() {
		return pickuplocation;
	}

	public void setPickuplocation(String pickuplocation) {
		this.pickuplocation = pickuplocation;
	}
	
	

	public String getAirport() {
		return airport;
	}

	public void setAirport(String airport) {
		this.airport = airport;
	}

	public String getVehicleno() {
		return vehicleno;
	}

	public void setVehicleno(String vehicleno) {
		this.vehicleno = vehicleno;
	}

	public String getDriverno() {
		return driverno;
	}

	public void setDriverno(String driverno) {
		this.driverno = driverno;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDrivername() {
		return drivername;
	}

	public void setDrivername(String drivername) {
		this.drivername = drivername;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
}

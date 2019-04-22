package com.taxi.demo.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class OutstationDetails {

	@Id
	private String id;
	 
	private String outarea;
	 private String vehicle;
	 private String price;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOutarea() {
		return outarea;
	}
	public void setOutarea(String outarea) {
		this.outarea = outarea;
	}
	public String getVehicle() {
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	 
	 
}

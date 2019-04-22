package com.taxi.demo.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class VehicleDetails {
 
	@Id
	private Long id;
	private String vehiclenumber;
	private String drivername;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getVehiclenumber() {
		return vehiclenumber;
	}
	public void setVehiclenumber(String vehiclenumber) {
		this.vehiclenumber = vehiclenumber;
	}
	public String getDrivername() {
		return drivername;
	}
	public void setDrivername(String drivername) {
		this.drivername = drivername;
	}
	
}

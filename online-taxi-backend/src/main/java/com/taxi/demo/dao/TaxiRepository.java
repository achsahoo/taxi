package com.taxi.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.taxi.demo.Entity.UserDetails;

@Repository
public interface TaxiRepository extends JpaRepository<UserDetails, Long>{

	// find area without repeat 
	@Query("SELECT pd.area FROM VehicleAreaPrice pd GROUP BY (pd.area) ORDER BY (pd.area) ASC")
	public List<Object[]> areafind();
	
	//find vehicle according to area
	 @Query("SELECT pd.vehicletype FROM VehicleAreaPrice pd WHERE pd.area=:area")
		public List<String> vehicleByArea(@Param("area")String area);
	 
	 //price wrt area and vehicle
	 @Query("SELECT pd.price FROM VehicleAreaPrice pd WHERE pd.area=:area AND pd.vehicletype=:vehicletype")
		public Double priceByAreaAndVehicleType(@Param("area")String area,@Param("vehicletype")String vehicletype);
}

package com.taxi.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.taxi.demo.Entity.OutstationDetails;

public interface OutStationRepository extends JpaRepository<OutstationDetails, String>{

	
	// find area without repeat ascending
		@Query("SELECT pd.outarea FROM OutstationDetails pd GROUP BY (pd.outarea) ORDER BY (pd.outarea) ASC")
		public List<Object[]> areafind();
		
		//find vehicle according to area
		 @Query("SELECT pd.vehicle FROM OutstationDetails pd WHERE pd.outarea=:outarea")
			public List<String> vehicleByArea(@Param("outarea")String outarea);
		 
		 //price wrt area and vehicle
		 @Query("SELECT pd.price FROM OutstationDetails pd WHERE pd.outarea=:outarea AND pd.vehicle=:vehicle")
			public Double priceByAreaAndVehicleType(@Param("outarea")String outarea,@Param("vehicle")String vehicle);
	
}

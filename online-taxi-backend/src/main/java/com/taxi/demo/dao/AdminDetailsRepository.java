package com.taxi.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.taxi.demo.Entity.AdminDetails;

public interface AdminDetailsRepository extends JpaRepository<AdminDetails, String>{

	@Query("SELECT count(*) from AdminDetails ad where ad.eid=:uid and ad.password=:password ")
	public int findByEId(@Param("uid") String uid, @Param("password") String password);
	
}

package com.taxi.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.taxi.demo.Entity.BookingDetails;

public interface BookingRepository extends CrudRepository<BookingDetails,Long >{

}

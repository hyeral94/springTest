package com.som.test.lesson06.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.som.test.lesson06.model.Booking;

@Repository
public interface BookingDAO {

	public int insertBooking(
			@Param("name") String name,
			@Param("headcount") int headcount,
			@Param("day") int day,
			@Param("date") Date date,
			@Param("phoneNumber") String phoneNumber);
	
	public List<Booking> selectBooking();
	
	public int deleteBooking(@Param("id") int id);
	
	public Booking selectCheckBooking(@Param("name") String name, @Param("phoneNumber") String phoneNumber);
			

}

package com.som.test.lesson06.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.som.test.lesson06.dao.BookingDAO;
import com.som.test.lesson06.model.Booking;

@Service
public class BookingBO {
	
	@Autowired
	private BookingDAO bookingDAO;
	
	public int addBooking(String name, int headcount, int day, Date date, String phoneNumber) {
		return bookingDAO.insertBooking(name, headcount, day, date, phoneNumber);
	}
	
	public List<Booking> getBooking(){
		return bookingDAO.selectBooking();
	}
	
	public int deleteBooking(int id) {
		return bookingDAO.deleteBooking(id);
	}
	
	public Booking getCheckbooking(String name, String phoneNumber) {
		return bookingDAO.selectCheckBooking(name, phoneNumber);
	}

}

package com.som.test.lesson06;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.som.test.lesson06.bo.BookingBO;
import com.som.test.lesson06.model.Booking;

@Controller
public class BookingController {
	
	@Autowired
	private BookingBO bookingBO;
	
	@GetMapping("/lesson06/test03/booking_view")
	public String bookingView() {
		return "lesson06/addBooking";
	}
	
	@ResponseBody
	@PostMapping("/lesson06/test03/add_booking")
	public String addBooking(
			@RequestParam("name") String name,
			@RequestParam("headcount") int headcount,
			@RequestParam("day") int day,
			@DateTimeFormat(pattern="yyyy년M월dd일")
			@RequestParam("date") Date date,
			@RequestParam("phoneNumber") String phoneNumber){
		
		int count = bookingBO.addBooking(name, headcount, day, date, phoneNumber);
		
		if(count == 1) {
			return "success";
		}else {
			return "fail";
		}
	} 
	
	
	@GetMapping("/lesson06/test03/print_booking")
	public String printBooking(Model model) {
		List<Booking> bookingList = bookingBO.getBooking();
		
		model.addAttribute("bookingList", bookingList);
		
		return "lesson06/printBooking";
	}
	
	@ResponseBody
	@GetMapping("/lesson06/test03/delete_book)ing")
	public Map<String, String> deleteBooking(@RequestParam("id") int id) {
//	String deleteBooking(@RequestParam("id") int id) {
		
		Map<String, String> result = new HashMap<>();
		
		int count = bookingBO.deleteBooking(id);
		
		if(count == 1) {
			result.put("result", "success");		
		}else {
			result.put("result", "fail");
		}
//		if(count == 0) {
//			return "fail";
//		}else {
//			return "success";
//		}
		
		return result;
		
	}
	
	@GetMapping("/lesson06/test03/check_booking_view")
	public String checkBookingView() {
		return "lesson06/checkBooking";
	}
	
	@ResponseBody
	@GetMapping("/lesson06/test03/check_booking")
	public Booking checkBooking(@RequestParam("name") String name, @RequestParam("phoneNumber") String phoneNumber) {

		Booking booking = bookingBO.getCheckbooking(name, phoneNumber);
		
		return booking;
		
	}
	
}



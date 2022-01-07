package com.som.test.lesson06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.som.test.lesson06.bo.WeatherhistoryBO;
import com.som.test.lesson06.model.Weatherhistory;

@Controller
public class WeatherhistoryController {

	@Autowired
	private WeatherhistoryBO weatherhistoryBO;
	
	@GetMapping("/lesson06/test01")
	public String test01(Model model){
		List<Weatherhistory> weatherhistory = weatherhistoryBO.getWeatherhistoryList();
		model.addAttribute("weatherhistory", weatherhistory );
		
		return "lesson06/test01";
	}
}

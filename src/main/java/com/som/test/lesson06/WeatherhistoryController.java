package com.som.test.lesson06;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("/lesson06/test02")
	public String weatherVeiw() {

		return "lesson06/addWeather";
	}
	
	@PostMapping("/lesson06/add_weather")
	public String addWeather(
			@DateTimeFormat(pattern="yyyy-MM-dd")
			@RequestParam("date") Date date,
			@RequestParam("weather") String weather,
			@RequestParam("temperatures") double temperatures,
			@RequestParam("precipitation") double precipitation,
			@RequestParam("microDust") String microDust,
			@RequestParam("windSpeed") double windSpeed) {
		
		
		weatherhistoryBO.addWeatherhistoryList(date, weather, temperatures, precipitation, microDust, windSpeed);
		
		return "redirect:/lesson06/test01";
	}

}



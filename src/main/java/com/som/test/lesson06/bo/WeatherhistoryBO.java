package com.som.test.lesson06.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.som.test.lesson06.dao.WeatherhistoryDAO;
import com.som.test.lesson06.model.Weatherhistory;

@Service
public class WeatherhistoryBO {

	@Autowired
	private WeatherhistoryDAO weatherhistoryDAO;
	
	public List<Weatherhistory> getWeatherhistoryList(){
		return weatherhistoryDAO.selectWeatherhistoryList();
	}
	
	
	
	public int addWeatherhistoryList(
			Date date, 
			String weather,
			double temperatures, 
			double precipitation,
			String microDust,
			double windSpeed){
		
		return weatherhistoryDAO.insertWeatherhistoryList(date, weather, temperatures, precipitation, microDust, windSpeed);
	}
	
	
}


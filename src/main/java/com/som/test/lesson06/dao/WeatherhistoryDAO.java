package com.som.test.lesson06.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.som.test.lesson06.model.Weatherhistory;

@Repository
public interface WeatherhistoryDAO {

	
	public List<Weatherhistory> selectWeatherhistoryList();
	
	public int insertWeatherhistoryList(
			@Param("date") Date date,
			@Param("weather") String weather,
			@Param("temperatures") double temperatures,
			@Param("precipitation") double precipitation,
			@Param("microDust") String microDust,
			@Param("windSpeed") double windSpeed);
		
	
}

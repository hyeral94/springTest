package com.som.test.lesson06.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface FavoriteDAO {

	public int selectFavorite();
	
	public int insertFavorite(
			@Param("name") String name,
			@Param("url") String yyyymmdd);
	
}

package com.som.test.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.som.test.lesson06.model.Favorite;

@Repository
public interface FavoriteDAO {

	public int insertFavorite(
			@Param("name") String name,
			@Param("url") String url);
	
	public List<Favorite> selectFavorite();
	
	public int selectDuplicateUrl(@Param("url") String url); //DAO 에서는 DB 조회만 가능, Param : xml에서 사용할 이름 지정
	
	public int deleteFavorite(@Param("id") int id);
}

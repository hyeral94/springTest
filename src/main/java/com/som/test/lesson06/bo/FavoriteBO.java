package com.som.test.lesson06.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.som.test.lesson06.dao.FavoriteDAO;

@Service
public class FavoriteBO {

	@Autowired
	private FavoriteDAO favoriteDAO;
	
	public int getFavorite() {
		return favoriteDAO.selectFavorite();
	}
	public int addFavorite(String name, String url) {
		return favoriteDAO.insertFavorite(name, url);
	}
}

package com.som.test.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.som.test.lesson06.dao.FavoriteDAO;
import com.som.test.lesson06.model.Favorite;

@Service
public class FavoriteBO {

	@Autowired
	private FavoriteDAO favoriteDAO;
	
	public int addFavorite(String name, String url) {
		return favoriteDAO.insertFavorite(name, url);
	}
	
	public List<Favorite> getFavorite() {
		return favoriteDAO.selectFavorite();
	}
	
	public boolean getDuplicateUrl(String url) {//controller 에서 바로 대응할 수 있도록
		int count = favoriteDAO.selectDuplicateUrl(url);
		
		if(count == 0) {
			return false;
		}else {
			return  true;
		}
	}
	
	public int deleteFavorite(int id) {
		return favoriteDAO.deleteFavorite(id);
	}
}

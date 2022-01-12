package com.som.test.lesson06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.som.test.lesson06.bo.FavoriteBO;
import com.som.test.lesson06.model.Favorite;

@Controller
public class FavoriteController {

	@Autowired
	private FavoriteBO favortieBO;
	
	@GetMapping("/lesson06/favorite_view")
	public String addFavoriteView() {
		
		return "lesson06/addFavorite";	
	}
	
	@ResponseBody
	@PostMapping("/lesson06/add_favorite")
	public String addFavorite(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
		
		int count = favortieBO.addFavorite(name, url);
		
		if(count == 1) {
			return "success";
		}else {
			return "fail";
		}
		
	}
	
	@GetMapping("/lesson06/print_favorite")
	public String printFavorite(Model model) {
		List<Favorite> favoriteList = favortieBO.getFavorite();
		model.addAttribute("favoriteList", favoriteList);
		
		return "lesson06/printFavorite";
		
	}
}

package com.som.test.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	private FavoriteBO favoriteBO;
	
	@GetMapping("/lesson06/favorite_view")
	public String addFavoriteView() {
		
		return "lesson06/addFavorite";	
	}
	
	@ResponseBody
	@PostMapping("/lesson06/add_favorite")
	public String addFavorite(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
	
		
		int count = favoriteBO.addFavorite(name, url);
		
		if(count == 1) {
			return "success";
		}else {
			return "fail";
		}
		
	}
	
	@ResponseBody
	@PostMapping("/lesson06/duplicate_url")
	public Map<String, String> duplicateUrl(@RequestParam("url") String url){// -> API
		Map<String, String> result = new HashMap<>();  //어떻게 담아서 ResponseBody에 돌려줄지
		
		if(favoriteBO.getDuplicateUrl(url)) {
			result.put("isDuplicate", "true");
		}else {
			result.put("isDuplicate", "false");
		}
		
		return result;
		
	}
	
	
	@GetMapping("/lesson06/print_favorite")
	public String printFavorite(Model model) {
		List<Favorite> favoriteList = favoriteBO.getFavorite();
		model.addAttribute("favoriteList", favoriteList);
		
		return "lesson06/printFavorite";
		
	}
	
	@ResponseBody
	@GetMapping("/lesson06/delete_favoite")
	public String deleteFavorite(@RequestParam("id") int id) {
		
		int count = favoriteBO.deleteFavorite(id);
		
		if(count == 0) {
			return "fail";
			
		}else {
			return "success";
		}
	}

}

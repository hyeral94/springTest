package com.som.test.lesson06;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FavoriteController {

	@GetMapping("/lesson06/add_favorite")
	public String test01() {
		
//		List<Map<String, String>> favorite = new ArrayList<>();
//		
//		Map<String, String> favoriteList = new HashMap<>();
//		favoriteList.put("name", "마론달");
//		favoriteList.put("url", "https://marondal.com");
//		favorite.add(favoriteList);
//		
//		favoriteList = new HashMap<>();
//		favoriteList.put("name", "구글");
//		favoriteList.put("url", "https://google.com");
//		favorite.add(favoriteList);
//		
//		favoriteList = new HashMap<>();
//		favoriteList.put("name", "네이버");
//		favoriteList.put("url", "https://naver.com");
//		favorite.add(favoriteList);
//		
//		favoriteList = new HashMap<>();
//		favoriteList.put("name", "인스타그램");
//		favoriteList.put("url", "https://instagram.com");
//		favorite.add(favoriteList);
//		
		
		
		
		return "lesson06/addFavorite";
		
	}
}

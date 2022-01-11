package com.som.test.lesson06;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class FavoriteController {

	@GetMapping("/lesson06/add_favorite")
	public String test01() {
		
		return "lesson06/addFavorite";	
	}
	
	@PostMapping("/lesson06/print_favorite")
	public int test02() {
		
		return "lesson06/printFavorite";
	}
}

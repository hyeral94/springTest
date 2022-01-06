package com.som.test.lesson01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerTest03 {
	
	@RequestMapping("/lesson01/test03/1")
	public String test03() {
		return "lesson01/test03";
		
	}
}

package com.som.test.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.som.test.lesson04.bo.RealtorBO;
import com.som.test.lesson04.model.Realtor;

@RequestMapping("/lesson04/test02")
@Controller
public class RealtorController {

	@Autowired
	private RealtorBO realtorBO;
	
	@GetMapping("/1")
	public String  realtroView() {
		return "lesson04/addRealtor";
	}

	@PostMapping("/add_realtor")
	public String addRealtor(
			@ModelAttribute Realtor realtor,
			Model model) {
		int count = realtorBO.addRealtor(realtor);
		
		model.addAttribute("result", realtor);
		
		return "lesson04/realtorInfo";
	}
}
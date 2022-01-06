package com.som.test.lesson04;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.som.test.lesson04.bo.SellerBO;
import com.som.test.lesson04.model.Seller;

@RequestMapping("/lesson04/test01/")
@Controller
public class SellerController {

	@Autowired
	private SellerBO sellerBO;
	
	@RequestMapping("1")
	public String addSellerview() {
		return "lesson04/addSeller";
	}
		
	@ResponseBody
	@RequestMapping("add_seller")
	public String addSeller(
		@RequestParam("nickname") String nickname,
		@RequestParam("profileImageUrl") String profileImageUrl,
		@RequestParam("temperature") double temperature)
		{
		int count = sellerBO.addSeller(nickname, profileImageUrl, temperature);
		
		return "입력성공 : " + count;
		
	}
	
	@RequestMapping("2")
	public String getSellerInfoview(
			@RequestParam(value = "id", required = false) Integer id,
			Model model) {
		
		if(id == null) {
			Seller seller = sellerBO.getLastSeller();
		}else {
			Seller seller = sellerBO.getSeller(id);
			model.addAttribute("result", seller);
		}
		
		return "lesson04/sellerInfo";
	}
	

}

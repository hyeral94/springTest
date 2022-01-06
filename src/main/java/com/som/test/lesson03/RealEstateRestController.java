package com.som.test.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.som.test.lesson03.bo.RealEstateBO;
import com.som.test.lesson03.model.RealEstate;

@RequestMapping("/lesson03/test01")
@RestController
public class RealEstateRestController {
	@Autowired
	private RealEstateBO realEstateBO;
	
	@RequestMapping("1")
	public RealEstate test01(@RequestParam("id") int id) {
			
		return realEstateBO.getRealEstate(id);
	}

	
	@RequestMapping("2")
	public List<RealEstate> test02(@RequestParam("rentPrice") int rentPrice) {
			
		return realEstateBO.getRealEstate2(rentPrice);
	}

	@RequestMapping("3")
	public List<RealEstate> test03(
			@RequestParam("area") int area, 
			@RequestParam("price") int price){
	
		return realEstateBO.getRealEstate3(area, price);
	}
	
	@RequestMapping("2_1")
	public String test02_1() {		
		RealEstate realEstate = new RealEstate();
		
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		
		int count = realEstateBO.addRealEstateObj(realEstate);
		
		return "입력 성공 : " + count;
	}
	
	@RequestMapping("2_2")
	public String test02_2(@RequestParam("realtorId") int  realtorId) {
		int count = realEstateBO.addRealEstateAsField(realtorId, "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);
		
		return "입력 성공 : " + count;	
	}
	
	@RequestMapping("3_1")
	public String test03_1(@RequestParam("id") int id) {
		int count = realEstateBO.addRealEstateUpdate(id, "전세", 70000);
		
		return "수정 성공 : " + count;
	}
	
	@RequestMapping("3_2")
	public String test03_2(@RequestParam("id") int id) {
		int count = realEstateBO.RealEstateDelete(id);
		return "삭제 성공 : " + count;
	}
	
}

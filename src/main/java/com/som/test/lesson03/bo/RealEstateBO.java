package com.som.test.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.som.test.lesson03.dao.RealEstateDAO;
import com.som.test.lesson03.model.RealEstate;

@Service
public class RealEstateBO {

	
	@Autowired
	private RealEstateDAO realEstateDAO;
	
	public RealEstate getRealEstate(int id) {
		return realEstateDAO.selectRealEstate(id);
	}
	
	public List<RealEstate> getRealEstate2(int rentPrice) {
		return realEstateDAO.selectRealEstate2(rentPrice);
	}

	public List<RealEstate> getRealEstate3(int area, int price) {
		return realEstateDAO.selectRealEstate3(area, price);
	}
	
	public int addRealEstateObj(RealEstate realEstate) {
		return realEstateDAO.insertRealEstateObject(realEstate);
	}

	public int addRealEstateAsField(int realtorId, String address, int area, String type, int price, int rentPrice) {
		return realEstateDAO.insertRealEstateAsField(realtorId, address, area, type, price, rentPrice);
	}
	
	public int addRealEstateUpdate(int id, String type, int price) {
		return realEstateDAO.updateRealEstate(id, type, price);
	}
	
	
	public int RealEstateDelete(int id) {
		return realEstateDAO.deleteRealEstate(id);
		
	}
}

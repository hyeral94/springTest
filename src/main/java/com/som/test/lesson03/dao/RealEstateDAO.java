package com.som.test.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.som.test.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {

	public RealEstate selectRealEstate(@Param("id") int id);
	
	public List<RealEstate> selectRealEstate2(@Param("rentPrice") int rentPrice);

	public List<RealEstate> selectRealEstate3(
			@Param("area") int area, 
			@Param("price") int price);

	
	public int insertRealEstateObject(RealEstate realEstate);
	
	public int insertRealEstateAsField(
			@Param("realtorId") int realtorId,
			@Param("address") String address,
			@Param("area") int area,
			@Param("type") String type,
			@Param("price") int price,
			@Param("rentPrice") int rentPrice
			);
	
	public int updateRealEstate(
			@Param("id") int id,
			@Param("type") String type,
			@Param("price") int price
			);
	
	public int deleteRealEstate(
			@Param("id") int id
			);			
}
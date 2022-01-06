package com.som.test.lesson04.dao;

import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.som.test.lesson04.model.Seller;

@Repository
public interface SellerDAO {

	public int insertSeller(
			@Param("nickname") String nickname,
			@Param("profileImageUrl") String profileImageUrl,
			@Param("temperature") double temperature
			);
	
	public Seller selectLastSeller();
	
	public Seller selectSeller(@Param("id") int id);

	
	
}

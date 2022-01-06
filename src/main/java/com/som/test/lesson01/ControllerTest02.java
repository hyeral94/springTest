package com.som.test.lesson01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("lesson01/test02")
public class ControllerTest02 {
		
	@ResponseBody
	@RequestMapping("/1")
	public List<Map<String, Object>> printList() {
		List<Map<String, Object>> moiveList = new ArrayList<>();
		
			Map<String, Object> movieInfo = new HashMap<>();
				movieInfo.put("rate", 15);
				movieInfo.put("director", "봉준호");
				movieInfo.put("time", 131);
				movieInfo.put("title", "기생충");
				moiveList.add(movieInfo);
				
			Map<String, Object> movieInfo2 = new HashMap<>();	// or moiveInfo = new HashMap<>();
				movieInfo2.put("rate", 0);
				movieInfo2.put("director", "로베르토 베니니");
				movieInfo2.put("time", 116);
				movieInfo2.put("title", "인생은 아름다워");
				moiveList.add(movieInfo2);
			
			Map<String, Object> movieInfo3 = new HashMap<>();
				movieInfo3.put("rate", 12);
				movieInfo3.put("director", "크리스퍼 놀란");
				movieInfo3.put("time", 147);
				movieInfo3.put("title", "인셉션");
				moiveList.add(movieInfo3);
				
			Map<String, Object> movieInfo4 = new HashMap<>();
				movieInfo4.put("rate", 19);
				movieInfo4.put("director", "윤종빈");
				movieInfo4.put("time", 133);
				movieInfo4.put("title", "범죄와의 전쟁 : 나쁜놈들 전성시대");
				moiveList.add(movieInfo4);
				
			Map<String, Object> movieInfo5 = new HashMap<>();
				movieInfo5.put("rate", 15);
				movieInfo5.put("director", "프란시스 로렌스");
				movieInfo5.put("time", 137);
				movieInfo5.put("title", "헝거게임");
				moiveList.add(movieInfo5);
				
				
				return moiveList;

	}
	
	@ResponseBody
	@RequestMapping("/2")
	public List<Data> printData(){// <>안에 내가 저장한 클래스 이름 써주기
		List<Data> dataList = new ArrayList<>();

		Data data = new Data();//값을 저장할 공간 확보
		data.setTitle("안녕하세요 가입인사 드립니다");
		data.setUser("hagulu");
		data.setContent("안녕하세요 가입 했어요. 잘 부탁드립니다.");
		dataList.add(data);
		
		data = new Data();// 새로운 객체는 새로운 공간에 저장할 수 있도록 해야함.
		data.setTitle("헐 대박");
		data.setUser("bada");
		data.setContent("오늘 목요일있었어..금요일인줄");
		dataList.add(data);
		
		data = new Data();
		data.setTitle("오늘 데이트 한 이야기 해드릴게요");
		data.setUser("dulumary");
		data.setContent("....");
		dataList.add(data);

		return dataList;
	
	}
	
	@ResponseBody
	@RequestMapping("/3")
	public ResponseEntity<Data> entity() {
		Data data = new Data();//값을 저장할 공간 확보
		data.setTitle("안녕하세요 가입인사 드립니다");
		data.setUser("hagulu");
		data.setContent("안녕하세요 가입 했어요. 잘 부탁드립니다.");
		
		ResponseEntity<Data> entity = new ResponseEntity<>(data, HttpStatus.INTERNAL_SERVER_ERROR);
		
		return entity;
	}
	

	
}
	

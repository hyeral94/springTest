<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>날씨 입력 페이지</title>
</head>
<body>
	<form method="post" action="/lesson06/add_weather">
		<div class="d-flex">
		<div class="col-2 bg-primary">
			<div class="logo">
			
				<img width="210" src="https://blog.kakaocdn.net/dn/TxmeD/btqCKArBvPm/2tzfJfINwg0WWmCzC4jKW0/img.jpg">
			</div>
			<div>
				 <nav>
	                    <ul class="nav flex-column">
	                        <li class="nav-item"><a class="nav-link text-white" href="#">날씨</a></li>
	                        <li class="nav-item"><a class="nav-link text-white" href="#">날씨입력</a></li>
	                        <li class="nav-item"><a class="nav-link text-white" href="#">테마날씨</a></li>
	                        <li class="nav-item"><a class="nav-link text-white" href="#">관측기후</a></li>
	                    </ul>
	              </nav>
              </div>       
		</div>
			
		<div class="col-10">
			<header>
				<h2>날씨 입력</h2>
			</header>
		
			<section class="p-5">
				<div class="m-3">
				<label>날짜</label><input type="text" name="date"> 
			
				<label>날씨
					<select name="weather">
						<option>맑음</option>
						<option>구름조금</option>
						<option>흐림</option>
						<option>비</option>
					</select>
				</label>
				<label name="microDust">미세먼지
					<select>
						<option>보통</option>
						<option>좋음</option>
						<option>나쁨</option>
						<option>최악</option>
					</select>	
				</label>					
				</div>
				<div class="m-3">
					<label>기온</label><input type="text" name="temperatures">
					<label>강수량</label><input type="text" name="precipitation">
					<label>풍속</label><input type="text" name="windSpeed">
				</div>	
				<button type="submit" class="btn btn-success" style="float:right">저장</button>	
			</section>	
		
		</div>
	</div>
	
		<footer class="d-flex">		
			<div class="col-2">
				<img width="100" src="https://blog.kakaocdn.net/dn/TxmeD/btqCKArBvPm/2tzfJfINwg0WWmCzC4jKW0/img.jpg">
			</div>
			<div class="text-secondary">
				07062) 서울시 동작구 여의대방로16길 61<br>
				Copyrightⓒ2021 X KMA All rights reserved.
			</div>
			
		</footer>
	</form>
		
	


</body>
</html>
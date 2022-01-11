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
        

<title>날씨 정보 페이지</title>
</head>
<body>
	<div class="d-flex">
		<div class="col-2 bg-primary">
			<div class="logo">
			
				<img width="200" src="https://blog.kakaocdn.net/dn/TxmeD/btqCKArBvPm/2tzfJfINwg0WWmCzC4jKW0/img.jpg">
			</div>
			<div>
				 <nav>
	                    <ul class="nav flex-column">
	                        <li class="nav-item"><a class="nav-link text-white" href="http://localhost:8080//lesson06/test01">날씨</a></li>
	                        <li class="nav-item"><a class="nav-link text-white" href="http://localhost:8080//lesson06/test02">날씨입력</a></li>
	                        <li class="nav-item"><a class="nav-link text-white" href="#">테마날씨</a></li>
	                        <li class="nav-item"><a class="nav-link text-white" href="#">관측기후</a></li>
	                    </ul>
	              </nav>
              </div>       
		</div>
			
		<div class="col-10">
			<header>
				<h2>과거 날씨</h2>
			</header>
			<section>	
				<table class="table text-center">
					<thead>
						<tr>
							<th>날짜</th>
							<th>날씨</th>
							<th>기온</th>
							<th>강수량</th>
							<th>미세먼지</th>
							<th>풍속</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="weather" items="${weatherhistory  }">
						<tr>
							<td>	
							<fmt:formatDate value="${weather.date }" pattern="yyyy년 M월 d일" />
							</td>
									
							<td>
							<c:choose>
								<c:when test="${fn:contains(weather.weather, '맑음') }">
								<img width="20" src="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg">
								</c:when>
								<c:when test="${fn:contains(weather.weather, '구름조금') }">
								<img width="20" src="http://marondal.com/material/images/dulumary/web/jstl/partlyCloudy.jpg">
								</c:when>
								<c:when test="${fn:contains(weather.weather, '흐림') }">
								<img width="20" src="http://marondal.com/material/images/dulumary/web/jstl/cloudy.jpg">
								</c:when>
								<c:otherwise>
								<img width="20" src="http://marondal.com/material/images/dulumary/web/jstl/rainy.jpg">
								</c:otherwise>
									
							</c:choose>
							</td>
							
								<td>${weather.temperatures }℃</td>
								<td>${weather.precipitation }mm</td>
								<td>${weather.microDust }</td>
								<td>${weather.windSpeed }m/h</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
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
		
	

</body>
</html>
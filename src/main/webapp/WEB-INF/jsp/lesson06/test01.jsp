<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>날씨 정보 페이지</title>
</head>
<body>

	<div>
		<div class="d-flex col-2">
			<div class="Justify-content-start">
				<nav>
					<ul class="nav">
						<li class="nav-item nav-fill"><a href="#">날씨</a></li>
						<li class="nav-item nav-fill"><a href="#">날씨입력</a></li>
						<li class="nav-item nav-fill"><a href="#">테마날씨</a></li>
						<li class="nav-item nav-fill"><a href="#">관측기후</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="col-10 container">
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
								
								<fmt:formatDate value="${weather.date }" pattern="yyyy년 MM월 dd일" />
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
	
		<footer></footer>
		
	</div>

</body>
</html>
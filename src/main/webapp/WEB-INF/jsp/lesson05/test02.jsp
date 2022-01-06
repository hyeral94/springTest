<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>JSTL Core 라이브러리2</title>
</head>
<body>
	<h1>1. JSTL forEach</h1>
	
	<h3>HOT 5</h3>
	<table class="table container">
		<thead>
			<tr>
				<th>순위</th>
				<th>제목</th>
			</tr>
			
		</thead>
		<tbody>
			<c:forEach var="music" items="${musicRanking }" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${music}</td>
			</tr>
			</c:forEach>
		
		
		</tbody>		
		
	</table>

	<h1>2. JSTL 응용하기</h1>
	
	<h3>멤버십</h3>
	<table class="table container">
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>
				<th>등급</th>
				<th>포인트</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="member" items="${membership }">
			
			<tr>
				<td>${member.name }</td>
				<td>${member.phoneNumber }</td>
				<c:choose>
					<c:when test="${member.grade == 'GOLD' }">
						<td class="text-warning">${member.grade }</td>	
					</c:when>
					<c:when test="${member.grade == 'VIP' }">
						<td class="text-danger">${member.grade }</td>
					</c:when>
					<c:otherwise>
						<td>${member.grade }</td> 
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${member.point >= 5000}">						
						<td class="text-primary">${member.point }P</td>
					</c:when>
					<c:otherwise>
						<td>${member.point }P</td> 
					</c:otherwise>
				</c:choose>	
				
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
</body>
</html>
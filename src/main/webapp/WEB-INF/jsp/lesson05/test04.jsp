<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>JSTL fn 라이브러리</title>
</head>
<body>
	<h1>회원 정보 리스트</h1>
	<table class="table text-center">
		<thead>
			<tr>
				<th>No</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>국적</th>
				<th>이메일</th>
				<th>자기소개</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="member" items="${members }" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${member.getName}</td>
				<td>010-1234-4567</td>
				<td>삼국-촉한</td>
				<td>parkhye@naver.com</td>
				<td>안녕하세요</td>
			</tr>
			</c:forEach>
		</tbody>
	
	</table>
</body>
</html>
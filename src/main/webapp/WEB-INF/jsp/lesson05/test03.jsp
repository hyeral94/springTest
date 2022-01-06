<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>JSTL fmt 라이브러리</title>
</head>
<body>

	<h1>후보자 득표율</h1>
	<table class="table text-center">
		<thead>
			<tr>
				<th>기호</th>
				<th>득표 수</th>
				<th>득표 율</th>
			</tr>
		
		</thead>
		
		<tbody>
			<c:forEach var="candidate" items="${candidates}" varStatus="status">
			<tr>
			
				<td>${status.count }</td>
				<td><fmt:formatNumber value="${candidate }" /></td>
				<td><fmt:formatNumber value="${candidate / 1000000}"  type="percent" /></td>
			
			</tr>
			</c:forEach>		
		</tbody>
	
	</table>
	
	<h1>2. JSTL Formatter 통화, 날짜</h1>
	<table class="table text-center">
		<thead>
			<tr>
				<th>사용처</th>
				<th>가격</th>
				<th>사용날짜</th>
				<th>할부</th>
			</tr>
		</thead>
	
		<tbody>
			<c:forEach var="bills" items="${cardBills }">
			<tr>	
				<td>${bills.store }</td>
				<td><fmt:formatNumber value="${bills.pay }" type="currency" /></td>
				<td>
					<fmt:parseDate value="${bills.date }" pattern="yyyy-MM-dd" var="date" />
					
					<fmt:formatDate value="${date }" pattern="yyyy년 M월 d일" />
				</td>
				
				<td>${bills.installment}</td>
			</tr>
			</c:forEach>	
		</tbody>
	
	</table>
	
	
	
</body>
</html>
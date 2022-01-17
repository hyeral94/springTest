<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<title>예약목록 보기</title>
</head>
<body>
	<div class="container">
		<header class="mt-4">
			<div class="text-center display-4">통나무 팬션</div>
			 <nav class="mt-4" style="background-color:peru">
			 	<ul class="nav nav-fill">
			 		<li class="nav-item"><a class="nav-link text-white" href="#">팬션소개</a></li>
			 		<li class="nav-item"><a class="nav-link text-white" href="#">객실보기</a></li>
                    <li class="nav-item"><a class="nav-link text-white" href="#">예약안내</a></li>
                    <li class="nav-item"><a class="nav-link text-white" href="#">커뮤니티</a></li>
			 	</ul>
			 </nav>
		</header>
		<section>
				<h3 class="text-center mt-3">예약 목록 보기</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th>이름</th>
							<th>예약날짜</th>
							<th>숙박일수</th>
							<th>숙박인원</th>
							<th>전화번호</th>
							<th>예약상태</th>
							<th></th>
						</tr>
					</thead>
					
					<tbody>
					<c:forEach var="booking" items="${bookingList }">
						<tr>
							<td>${booking.name }</td>
							<td>
							<fmt:formatDate value="${booking.date }" pattern="yyyy년M월dd일" />
							</td>
							<td>${booking.day}</td>
							<td>${booking.headcount }</td>
							<td>${booking.phoneNumber }</td>
					
							<c:if test="${fn:contains(booking.state, '대기중') }">
								<td class="text-primary">대기중</td>
							</c:if>
							<c:if test="${fn:contains(booking.state, '확정') }">
								<td class="text-success">확정</td>
							</c:if>
							
						
							<td><button type="button" class="btn btn-danger btn-sm deleteBtn" data-booking-id="${booking.id }">삭제</button></td>
						</tr>
					</c:forEach>
					</tbody>
					
				</table>

		<script>
			$(document).ready(function(){
				$(".deleteBtn").on("click", function(){
					let bookingId = $(this).data("booking-id"); //this -> 현재발생한 이벤트를 가르킴
					
					
					$.ajax({
						type:"get",
						url:"/lesson06/test03/delete_booking",
						data:{"id":bookingId},
						success:function(data){
							//alert("삭제성공")
							//location.reload();
							if(data.result == "success"){
								alert("삭제 성공");
							}else{
								alert("삭제 실패");
							}
						},
						error:function() {
							alert("에러발생");
						}
						
					});
				});
				
				
			});
		</script>
		</section>
		<footer class="mt-3 ml-4">
			<address class="text-secondary">
				제주특별자치도 제주시 애월읍  <br>
                사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목 <br>
                Copyright 2025 tongnamu All right reserved
			</address>	
		</footer>

</body>
</html>
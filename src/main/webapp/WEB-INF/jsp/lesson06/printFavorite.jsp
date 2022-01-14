<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<title>즐겨찾기 목록</title>
</head>
<body>

	<h1>즐겨찾기 목록</h1>
	<table class="table">
		<thead>
			<tr>
				<th>No.</th>
				<th>이름</th>
				<th>주소</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="favorite" items="${favoriteList }" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${favorite.name }</td>
				<td><a href="{favorite.url }">${favorite.url }</a></td>
				<td><button type="button" class="btn btn-danger btn-sm deleteBtn" data-favorite-id="${favorite.id }"><a href="#">삭제</button></a></td>
				<!--  id(#)는 중복불가 class(.)는 중복 가능 / data-원하는 이름 -->
			</tr>
			</c:forEach>
		</tbody>
	
	</table>
	
	<script>
		$(document).ready(function(){
			
			$(".deleteBtn").on("click", function(){
				let id = $(this).data("favorite-id"); //this -> 현재발생한 이벤트를 가르킴
				
				
				$.ajax({
					type:"get",
					url:"/lesson06/delete_favoite",
					data:{"id":id},
					success:function(data){
						alert("삭제성공");
						location.reload();  //새로고침
					},
					error:function() {
						alert("에러발생");
					}
					
				});
			});
			
			
		});
	
	</script>
</body>
</html>
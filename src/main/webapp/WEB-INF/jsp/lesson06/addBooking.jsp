<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

     
<title>통나무 펜션</title>
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
		<section class="d-flex">
			<div class="col-3"></div>
			<div class="col-6">
				<h3 class="text-center mt-3">예약하기</h3>
				<label>이름</label><input type="text" class="form-control" name="name" id="nameInpt">
				<label>예약날짜</label><input type="text" class="form-control" name="date" id="dateInput">
				<label>숙박일수</label><input type="text" class="form-control" name="day" id="dayInput">
				<label>숙박인원</label><input type="text" class="form-control" name="headcount" id="headcountInput">
				<label>전화번호</label><input type="text" class="form-control" name="phoneNumber" id="phoneNumberInput">
				<button type="button" class="btn btn-warning form-control mt-3" id="addBtn">예약하기</button>
				
			
			</div>
			<div class="col-3"></div>
			
		
		</section>
		<footer class="mt-3 ml-4">
			<address class="text-secondary">
				제주특별자치도 제주시 애월읍  <br>
                사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목 <br>
                Copyright 2025 tongnamu All right reserved
			</address>	
		</footer>
		
		<script>
			$(document).ready(function(){
				$("#addBtn").on("click", function(){
					let name = $("#nameInpt").val();
					let date = $("#dateInput").val();
					let day = $("#dayInput").val();
					let headcount = $("#headcountInput").val();
					let phoneNumber = $("#phoneNumberInput").val();
					
					if(name == ""){
						alert("이름을 입력하세요.");
						return;
					}
					
					if(date == ""){
						alert("예약날짜를 입력하세요.");
						return;
					}
					
					if(day == ""){
						alert("숙박일수를 입력하세요.");
						return;
					}
					
					if(headcount == ""){
						alert("숙박인원을 입력하세요.");
						return;
					}
					
					if(phoneNumber == ""){
						alert("전화번호를 입력하세요.");
						return;
					}
					
					$.ajax({
						type:"post",
						url:"/lesson06/test03/add_booking",
						data:{"name":name, "date":date, "day":day, "headcount":headcount, "phoneNumber":phoneNumber},
						success:function(data){
							if(data == "success"){
								location.href="/lesson06/test03/print_booking";
							}else{
								alert("실패");
							}
						},
						error:function(){
							alert("에러발생");
						}
						
					});
					
					
				});
				
			});
		
		</script>
		
		
		
	
	</div>

   

         
        
</body>
</html>
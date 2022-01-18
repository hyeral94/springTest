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
		<section class="banner">
		 	<img src="http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg" id="bannerImage">	
		</section>
		<section class="d-flex">
			<article class="col-4 d-flex justify-content-center align-items-center" style="background-color:sienna">
				<div>
					<h1 class="text-white">실시간<br>
					예약하기</h1>
				</div>
			
			</article>
			<article class="col-4" style="background-color:chocolate">
				<div class="align-items-end">
					<h4 class="mr-4 text-white mt-2">예약 확인</h4><br>
				
					<div>
						<label class="input-label text-white">이름 </label>
				        <input type="text" class="form-control text-input" name="name" id="nameInput">
					</div>
					<div>
					    <label class="input-label text-white">전화번호 </label>
		                <input type="text" class="form-control text-input" name="phoneNumber" id="phoneNumberInput">
					</div>
					<div class="d-flex justify-content-end">
						<button class="btn btn-success mt-3 mr-5" id="checkBtn">조회 하기</button>
					</div>
				</div>
			
			</article>
			<article class="col-4 reservation-call d-flex justify-content-center align-items-center text-white" style="background-color:sienna">
			    <div>
                        <h3>예약문의 : </h3>
                        <h1>010-</h1>
                        <h1>000-1111</h1>
                    </div>
			
			</article>
	
		</section>
	
		<footer class="mt-3 ml-4">
			<address class="text-secondary">
				제주특별자치도 제주시 애월읍  <br>
                사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목 <br>
                Copyright 2025 tongnamu All right reserved
			</address>	
		</footer>
	</div>
   
	   <script>
			$(document).ready(function(){
				$("#checkBtn").on("click", function(){
					let name = $("#nameInput").val();
					let phoneNumber = $("#phoneNumberInput").val();
					
					if(name == ""){
						alert("이름을 입력하세요.");
						return;
					}
					
					
					if(phoneNumber == ""){
						alert("전화번호를 입력하세요.");
						return;
					}
					
					$.ajax({
						type:"get",
						url:"/lesson06/test03/check_booking",
						data:{"name":name,"phoneNumber":phoneNumber},
						success:function(data){
							if(data == ""){
								alert("조회된 결과가 없습니다.");
							}else{
								alert(
										"이름 : " + data.name + "\n"
										+ "인원 : " + data.headcount + "\n"
										+ "상태 : " + data.state
									);				
							}
						
						},
						error:function() {
							alert("에러 발생");
						}
						
					});
					
				});
			});
	  
	   </script>
	            


    </body>
</html>



</body>
</html>


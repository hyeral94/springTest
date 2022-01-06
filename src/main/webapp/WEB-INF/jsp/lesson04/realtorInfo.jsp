<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>공인중개사 정보</title>
</head>
<body>

	<div class="container">
	<h1>공인중개사 정보</h1>
		<table class="table">
			<tr>
				<td><h4>ID</h4></td>
				<td>${result.id}</td>
			</tr>	
			
			<tr>
				<td><h4>상호명</h4></td>
				<td>${result.office}</td>
			</tr>
			
			<tr>	
				<td><h4>전화번호</h4></td>
				<td>${result.phoneNumber}</td>
			</tr>
			
			<tr>	
				<td><h4>주소</h4></td>
				<td>${result.address}</td>
			</tr>
			
			<tr>	
				<td><h4>등급</h4></td>
				<td>${result.grade}</td>
			</tr>	
				
		
		</table>
	
	</div>

</body>
</html>
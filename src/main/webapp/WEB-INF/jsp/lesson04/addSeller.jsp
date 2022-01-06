<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>판매자 추가</title>
</head>
<body>
	
	<div class="container">
		<h1>판매자 추가</h1>
	<form method="post" action="/lesson04/test01/add_seller">
		<label>닉네임</label><input type="text" class="form-control" name="nickname">
		<label>프로필 사진 url</label><input type="text" class="form-control" name="profileImageUrl">
		<label>온도</label><input type="text" class="form-control" name="temperature">
		
		<input type="submit" value="추가" class="btn btn-primary">
	</form>	
	
	</div>


</body>
</html>
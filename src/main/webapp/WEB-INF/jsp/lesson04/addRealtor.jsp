<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


<title>공인중개사</title>
</head>
<body>
	<div class="container">
		<form method="post" action="/lesson04/test02/add_realtor">
			<label>상호명</label><input type="text" class="form-control" name="office">
			<label>전화번호</label><input type="text" class="form-control" name="phoneNumber">
			<label>주소</label><input type="text" class="form-control" name="address">
			<label>등급</label><input type="text" class="form-control" name="grade">
			
			<button type="submit" class="btn btn-primary">추가</button>
		</form>
	</div>

</body>
</html>
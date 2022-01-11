<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>즐겨찾기 추가하기</title>
</head>
<body>
	<h1>즐겨 찾기 추가하기</h1>
	<form method="post" action="lesson06/addFavorite">
	<label>이름</label><input type="text" class="form-control" name="name">
	<label>주소</label><input type="text" class="form-control" name="url">
	<button type="button" class="btn btn-success" id="daaBtn">추가</button>
	</form>
	
	
</body>
</html>
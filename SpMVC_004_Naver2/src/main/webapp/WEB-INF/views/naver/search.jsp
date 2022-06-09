<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>naver/search</title>
<style>
form {
	display: flex;
	justify-content: space-around;
	width: 60%;
	margin: 10px auto;
}

select, input {
	padding: 8px;
	margin: 5px;
}

input {
	flex: 1;
}
button {
	padding: 5px 8px;
}
</style>
<link rel="stylesheet"
	href="${rootPath}/static/css/home.css?ver=2022-06-06-001" />
</head>
<body>

	<header>
		<h1>MY API</h1>
		<p>Naver API를 활용한 도서, 뉴스 , 영화 정보 서비스</p>
	</header>
	<%@ include file="/WEB-INF/views/nav.jsp"%>
	<form method="post">
		<select name="cat">
			<option value="BOOK">도서검색</option>
			<option value="NEWS">뉴스검색</option>
			<option value="MOVIE">영화검색</option>
		</select> <input name="search" placeholder="검색어를 입력하세요">
		<button>검색</button>
	</form>
</body>
</html>
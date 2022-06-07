<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
<link rel="stylesheet" href="${rootPath}/static/css/book.css?ver=2022-06-07-002">
<link rel="stylesheet" href="${rootPath}/static/css/home.css?ver=2022-06-07-001" />
<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/books.js?ver=2022-06-07-002"></script>
</head>
<body>

	<header>
		<h1>MY API</h1>
		<p>Naver API를 활용한 도서, 뉴스 , 영화 정보 서비스</p>
	</header>
<%@ include file="/WEB-INF/views/nav.jsp" %>
	<section class="t-container">
	<table class="books">
		<thead>
			<tr>
				<th>NO.</th>
				<th>ISBN</th>
				<th>도서명</th>
				<th>출판사</th>
				<th>저자</th>
				<th>출판일자</th>
			</tr>
		</thead>
		<% /* 
		서버로부터 받은 데이터(도서리스트)를 보여주기 위한 부분
		BOOKS : 서버로부터 받을 데이터
		BOOK : forEach를 사용하여 한개의 요소를 추출하여 저장할 변수
		*/%>
		<tbody>
			<c:forEach items="${BOOKS}" var="BOOK" varStatus="INDEX">
				<tr data-isbn="${BOOK.isbn}">
					<td>${INDEX.count}</td>
					<td>${BOOK.isbn}</td>
					<td>${BOOK.title}</td>
					<td>${BOOK.publisher}</td>
					<td>${BOOK.author}</td>
					<td>${BOOK.pubdate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="btn_box">
		<a href="${rootPath}/books/insert"><button>도서정보추가</button></a>
	</div>
	</section>
</body>
</html>
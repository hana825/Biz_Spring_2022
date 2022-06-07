<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<link rel="stylesheet" href="${rootPath}/static/css/insert.css?ver=2022-06-03-003">
<link rel="stylesheet" href="${rootPath}/static/css/home.css?ver=2022-06-02-003" />
<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/save.js?ver2022-06-05-001"></script>
<body>

	<header>
		<h1>MY API</h1>
		<p>Naver API를 활용한 도서, 뉴스 , 영화 정보 서비스</p>
	</header>
<%@ include file="/WEB-INF/views/nav.jsp" %>
<form class="save" method="post">
	<div>
		<input name="isbn" id="isbn" placeholder="ISBN" value="${BOOK.isbn}"
		<c:if test="${not empty BOOK.isbn}"> readonly="readonly"</c:if>> 
		<input name="title" id="title" placeholder="도서명 입력후 Enter" value="${BOOK.title}">
	</div>
	<div>
		<input name="author" placeholder="저자" value="${BOOK.author}"> 
		<input name="publisher" placeholder="출판사" value="${BOOK.publisher}"> 
		<input name="pubdate" placeholder="출판일" type="date" value="${BOOK.pubdate}">
		<input name="price" placeholder="가격" type="number" value="${BOOK.price}">
	</div>
		<input name="link" placeholder="자세히보기" value="${BOOK.link}">
		<input name="image" placeholder="이미지경로" value="${BOOK.image}">
	<div>
	</div>
	<textarea rows="10" name="description" placeholder="내용을 입력해주세요">${BOOK.description}</textarea>
	<button type="submit">저장</button>
</form>
</body>
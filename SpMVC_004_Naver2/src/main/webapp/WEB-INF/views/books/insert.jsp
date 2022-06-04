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
		<input name="isbn" id="isbn" placeholder="ISBN"> 
		<input name="title" id="title" placeholder="도서명 입력후 Enter">
	</div>
	<div>
		<input name="author" placeholder="저자"> 
		<input name="publisher" placeholder="출판사"> 
		<input name="pubdate" placeholder="출판일" type="date">
		<input name="price" placeholder="가격" type="number">
	</div>
	<textarea rows="10" placeholder="내용을 입력해주세요"></textarea>
	<div class="btns">
	<button class="btn_save" type="button">저장</button>
	<button type="button">새로작성</button>
	<a href="${rootPath}/books/list"><button type="button">리스트보기</button></a>
	</div>
</form>
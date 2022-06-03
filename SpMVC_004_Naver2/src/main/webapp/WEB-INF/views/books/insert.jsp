<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<link rel="stylesheet" href="${rootPath}/static/css/insert.css?ver=2022-06-03-001">
<form method="post">
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
	<div>
		<input name="link" placeholder="자세히보기"> 
		<input name="image" placeholder="이미지경로">
	</div>
	<textarea rows="10" placeholder="내용을 입력해주세요"></textarea>
	<div class="btns">
	<a href="${rootPath}/books/view"><button type="button">저장</button></a>
	<button type="button">새로작성</button>
	<a href="${rootPath}/books/list"><button type="button">리스트보기</button></a>
	</div>
</form>
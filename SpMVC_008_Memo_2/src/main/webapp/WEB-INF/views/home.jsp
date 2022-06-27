<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메모장</h1>
	
	<div class="memo_box">
		<c:forEach items="${memoVO}" var="memoVO">
		<div class="images">
			<h2>작성자 : ${memoVO.m_author}</h2>
			<h2>작성일자 : ${memoVO.m_date}</h2>
			<h2>작성시각 : ${memoVO.m_time}</h2>
			<h2>메모내용 : ${memoVO.m_memo}</h2>
			<img src="${rootPath}/upload/${memoVO.i_imageName}" width="100px" alt="${memoVO}">
		</div>
		</c:forEach>
	</div>
	
	<a href="${rootPath}/memo/write">메모 작성하기</a>
	
</body>
</html>
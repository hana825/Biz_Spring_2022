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
	<header>
		<h1>메모장</h1>
		<p>메모장 프로젝트 2022</p>
	</header>
	<a href="${rootPath}/memo/write">게시판 글쓰기</a>
	<a href="${rootPath}/file/fileups">여러 이미지 업로드</a>
	<div class="images">
		<c:forEach items="${FILES}" var="FILE">
			<img src="${rootPath}/upload/${FILE.i_imageName}" width="100px" alt="${FILE}">
		</c:forEach>
	</div>

</body>
</html>
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
<link rel="stylesheet" href="${rootPath}/static/css/home.css?ver=2022-06-07-001" />
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>MY API</h1>
		<p>Naver API를 활용한 도서, 뉴스 , 영화 정보 서비스</p>
	</header>
<%@ include file="/WEB-INF/views/nav.jsp" %>
	<h1>오늘의 뉴스</h1>
</html>
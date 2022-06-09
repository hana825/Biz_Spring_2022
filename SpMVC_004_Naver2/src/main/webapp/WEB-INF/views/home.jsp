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
<title>나의 API App</title>
<link rel="stylesheet" href="${rootPath}/static/css/main.css?ver=2022-06-02-002" />
<link rel="stylesheet" href="${rootPath}/static/css/home.css?ver=2022-06-06-002" />
<link rel="stylesheet" href="${rootPath}/static/css/table.css?ver=2022-06-02-001" />
<link rel="stylesheet" href="${rootPath}/static/css/modal.css?ver=2022-05-31-005" />
<link rel="stylesheet" href="${rootPath}/static/css/input.css?ver=2022-05-31-005" />
<script>
	const rootPath = '${rootPath}'
</script>
<script src="${rootPath}/static/js/input.js?ver=2022-05-31-004"></script>
</head>

<body>
	<header>
		<h1>MY API</h1>
		<p>Naver API를 활용한 도서, 뉴스 , 영화 정보 서비스</p>
	</header>
<%@ include file="/WEB-INF/views/nav.jsp" %>

	<section class="main">
	</section>
	<footer>
		<address>CopyRight &copy; hana@naver.com</address>
	</footer>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<link rel="stylesheet" href="${rootPath}/static/css/view.css?ver=2022-06-03-002">
<link rel="stylesheet" href="${rootPath}/static/css/home.css?ver=2022-06-02-003" />
</head>
<body>
	<header>
		<h1>MY API</h1>
		<p>Naver API를 활용한 도서, 뉴스 , 영화 정보 서비스</p>
	</header>
<%@ include file="/WEB-INF/views/nav.jsp" %>
<body>
<section>
<table>
<colgroup>
<col width="200px">
<col width="200px">
<col width="200px">
<col width="200px">
</colgroup>
	<tr>
	<th>도서코드</th>
	<td></td>
	<th>도서명</th>
	<td></td>
	</tr>
	<tr>
	<th>출판사</th>
	<td></td>
	<th>저자</th>
	<td></td>
	</tr>
	<tr>
	<th>출판일자</th>
	<td></td>
	<th>정가</th>
	<td></td>
	</tr>
</table>
	<div class="btns">
	<button type="button">수정</button>
	<button type="button">삭제</button>
	<a href="${rootPath}/books/list"><button type="button">리스트보기</button></a>
	</div>
</section>
</body>
</html>
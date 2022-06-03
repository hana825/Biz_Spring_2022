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
<link rel="stylesheet" href="${rootPath}/static/css/book.css?ver=2022-06-03-001">
</head>
<body>

<%@ include file="/WEB-INF/views/home.jsp" %>
	<section class="t-container">
	<table>

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
		<tbody>
			<c:forEach items="${BOOKS}" var="BOOK">
				<tr>
					<td>1</td>
					<td>${BOOK.isbn}</td>
					<td>${BOOK.title}</td>
					<td>${BOOK.publisher}</td>
					<td>${BOOK.author}</td>
					<td>${BOOK.pubdate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div><a href="${rootPath}/books/insert"><button>도서정보추가</button></a></div>
	</section>
</body>
</html>
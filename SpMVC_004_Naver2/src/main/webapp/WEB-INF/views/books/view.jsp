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
<link rel="stylesheet" href="${rootPath}/static/css/view.css?ver=2022-06-03-001">
<title>Insert title here</title>
</head>
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
</section>
	<div class="btns">
	<button type="button">수정</button>
	<button type="button">삭제</button>
	<a href="${rootPath}/books/list"><button type="button">리스트보기</button></a>
	</div>
</body>
</html>
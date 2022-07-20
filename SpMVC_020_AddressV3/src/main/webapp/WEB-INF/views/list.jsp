<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/list.js?ver=2022-07-20-001"></script>
<title>주소록</title>
<style>
	h1 {
		text-align: center;
	}
	button {
		border-radius: 10px;
	}
	a {
		text-decoration: none;
		color: inherit;
		border-radius: 10px;
	}
	
</style>
</head>
<body>

	<%// form에 한 개의 input box만 있을 경우 input box에 text를 입력한 후 
	  // Enter를 누르면 input box에 담긴 문자열을 서버로 전송하는 기능이 활성화된다. %>
	<form>
		<input class="w3-input"  name="search" placeholder="검색어 입력 후 Enter...">
	</form>
	<a class="w3-btn w3-ripple" href="${rootPath}/insert">주소 추가하기</a>
	<table class="w3-table w3-striped w3-bordered w3-border w3-hoverable addrs">
		<thead>
			<tr class="w3-light-grey">
				<th>SEQ</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ADDRS}" var="ADDR">
				<tr data-a_seq="${ADDR.a_seq}">
					<td>${ADDR.a_seq}</td>
					<td>${ADDR.a_name}</td>
					<td>${ADDR.a_tel}</td>
					<td>${ADDR.a_address}</td>
				</tr>
			</c:forEach>
		</tbody>
		
	</table>
	
	<%@ include file= "/WEB-INF/views/pagination.jsp" %>
</body>
</html>
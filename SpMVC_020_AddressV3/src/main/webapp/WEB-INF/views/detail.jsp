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
<title>Insert title here</title>
<style>
	h1 {
		text-align: center;
	}
	a {
		border-radius: 10px
	}
</style>
</head>
<body>
	<h1>${ADDR.a_name}</h1>
	<table class="w3-table w3-striped w3-bordered w3-border">
		<thead>
			<tr class="w3-light-grey">
				<th>이름</th>
				<th>전화번호</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${ADDR.a_name}</td>
				<td>${ADDR.a_tel}</td>
				<td>${ADDR.a_address}</td>
			</tr>
		</tbody>
	</table>
	<div class="w3-center">
		<a class="w3-btn w3-ripple" href="${rootPath}/update?seq=${ADDR.a_seq}">수정하기</a>
		<a class="w3-btn w3-ripple" href="${rootPath}/delete?seq=${ADDR.a_seq}">삭제하기</a>
		<a class="w3-btn w3-ripple" href="${rootPath}/">처음으로</a>
	</div>
	
</body>
</html>
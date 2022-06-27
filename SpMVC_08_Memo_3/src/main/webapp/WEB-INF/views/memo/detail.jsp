<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Insert title here</title>
<style>
div.paper {
	margin: 0 auto;
	width: 800px;
	height: 1000px;
	background-color: #ffe44d;
}
header {
	background-color: #3b69ad;
	padding: 12px 16px;
}
h1 {
	color: #fff;
	display: inline;
}
div.img {
	text-align: center;
	width: 100%;
	border: 1px solid #3b69ad;
	display: block;
	height: 500px;
}
img {
    width: 100%;
    height: 500px;
    object-fit: cover;
}
div.btn_box {
	display: inline;
	float: right;
}

div.btn_box a {
	text-decoration: none;
	display: inline-block;
	padding: 12px 16px;
	background-color: #fff;
	color: #1a283d;
	border-radius: 6px;
	cursor: pointer;
	font-weight: 900;
}
div.in{
	width: 80%;
	margin: 20px auto;
}

table {
	border-collapse: collapse;
	margin: 10px auto;
	width: 100%;
}
th, td {
	text-align: left;
	padding: 5px 8px;
	border-bottom: 1px solid #3b69ad;
}
th {
	color: #3b69ad;
	font-weight: 900;
	border-right: 1px dotted #3b69ad;
}
tr:last-of-type {
	border-bottom: 2px solid #3b69ad;
}

</style>
</head>
<body>
	<div class="paper">
	<header>
		<h1>na's memo</h1>
		<div class="btn_box">
			<a href="${rootPath}/">목록으로</a>
		</div>
	</header>
	<div class="in">
		<div class="img">
			<img src="${rootPath}/upload/${MEMO.m_image}">
		</div>
		<table class="memo">
		<colgroup>
			<col width="100px">
			<col width="500px">
		</colgroup>
			<tr>
				<th>NO</th>
				<td>${MEMO.m_seq}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${MEMO.m_author}</td>
			</tr>
			<tr>
				<th>작성일자</th>
				<td>${MEMO.m_date}</td>
			</tr>
			<tr>
				<th>작성시각</th>
				<td>${MEMO.m_time}</td>
			</tr>
			<tr>
				<th>메모내용</th>
				<td>${MEMO.m_memo}</td>
			</tr>
		</table>
		
		<div class="btn_box">
			<a href="${rootPath}/memo/${MEMO.m_seq}/update" class="update">수정</a>
			<a href="${rootPath}/memo/${MEMO.m_seq}/delete" class="delete">삭제</a>
		</div>
		</div>
	</div>
</body>

</html>
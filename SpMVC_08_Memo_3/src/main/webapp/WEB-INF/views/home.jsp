<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
table {
	border-collapse: collapse;
	margin: 10px auto;
	width: 80%;
}
th, td {
	text-align: left;
	padding: 5px 8px;
	border-bottom: 1px solid #3b69ad;
}
th {
	color: #3b69ad;
	font-weight: 900;
}
th:first-of-type, td:first-of-type {
	border-right: 1px dotted #3b69ad;
}
tr:last-of-type {
	border-bottom: 2px solid #3b69ad;
}


</style>

<script>
	const rootPath = '${rootPath}'
</script>
<script src="${rootPath}/static/js/memo.js?ver=2022-06-24-001" ></script>

</head>
<body>
	<div class="paper">
	<header>
		<h1>na's memo</h1>
		<div class="btn_box">
			<a href="${rootPath}/memo/insert">추가</a>
		</div>
	</header>
		<table class="memo">
			<colgroup>
				<col width="50px">
				<col width="100px">
				<col width="100px">
				<col width="200px">
			<thead>
				<tr>
					<th>NO</th>
					<th>작성일자</th>
					<th>작성시각</th>
					<th>메모내용</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${MEMOS}" var="MEMO" >
					<tr data-m_seq="${MEMO.m_seq}">
						<td>${MEMO.m_seq}</td>
						<td>${MEMO.m_date}</td>
						<td>${MEMO.m_time}</td>
						<td>${MEMO.m_memo}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>

</body>

</html>
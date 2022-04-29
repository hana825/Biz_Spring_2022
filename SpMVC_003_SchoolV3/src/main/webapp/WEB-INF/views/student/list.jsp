<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/include_head.jsp"%>
<style>
section {
	display: flex;
	flex-direction: column;
}

article {
	width: 80%;
	margin: 0 auto;
}

table {
	width: 80%;
	margin: 0 auto;
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	border-collapse: collapse;
}

tr {
	border-bottom: 1px solid #ddd;
	border-top: 1px solid #ddd;
}

th, td {
	padding: 5px;
	text-align: left;
	cursor: pointer;
}

tr:nth-of-type(even) {
	background-color: #eee;
}

tr:nth-of-type(odd) {
	background-color: #fff;
}

tr:nth-of-type(n+2):hover {
	background-color: #e0eddf;
}

tr:not(:first-of-type):hover {
	background-color: #e0eddf;
}

div.button-box {
	width: 80%;
	margin: 5px auto;
	text-align: right;
	padding: 5px 0;
}

div.button-box a {
	display: inline-block;
	padding: 12px 16px;
	text-decoration: none;
	color: white;
	background-color: rgb(39, 174, 96);
	border-radius: 10px;
}

div.button-box a:hover {
	box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.5);
	background-color: #3ec979;
	color: white;
	font-weight: bold;
}
</style>
<script>
	// JSP에서 사용하는 rootPath 변수 값을 JS에서 사용할 수 있도록 var 변수 선언 
	var rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/student.js?ver=2022-04-30"></script>
<body>
	<%@ include file="/WEB-INF/views/include/include_header.jsp"%>
	<%@ include file="/WEB-INF/views/include/include_nav.jsp"%>
	<section>
		<article>학생정보</article>
		<table>
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>학과</th>
				<th>학년</th>
			</tr>
			<c:forEach items="${ST_LIST}" var="stVO">
				<tr>
					<td>${stVO.stNum}</td>
					<td class="name" data-num="${stVO.stNum}">${stVO.stName}</td>
					<td>${stVO.stDept}</td>
					<td>${stVO.intGrade}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="button-box">
			<a href="${rootPath}/student/insert">학생정보 등록</a>
		</div>
	</section>
	<%@ include file="/WEB-INF/views/include/include_footer.jsp"%>

</body>
<script>
	
</script>

</html>
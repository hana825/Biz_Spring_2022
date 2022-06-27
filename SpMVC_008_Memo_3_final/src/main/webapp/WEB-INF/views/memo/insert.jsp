<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
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
button {
	display: inline-block;
	padding: 12px 16px;
	background-color: #fff;
	color: #1a283d;
	border-radius: 6px;
	cursor: pointer;
	font-weight: 900;
	float: right;
}
textarea {
	width: 100%;
	padding: 20px 0;
	display: block;
	resize: none;
}
form#memoVO input {
	background-color: #ffe44d;
	margin-bottom: 10px;
}
form#memoVO div {
	display: inline;
}
div.in{
	width: 80%;
	margin: 20px auto;
}
</style>

<div class="paper">
	<header>
		<h1>메모 작성</h1>
		<div class="btn_box">
			<a href="${rootPath}/">목록으로</a>
		</div>
	</header>
<div class="in">
<form:form modelAttribute="memoVO" enctype="multipart/form-data">
	<div>
		<form:input path="m_author" />
		<form:input path="m_date" />
		<form:input path="m_time" />
		<input class="file" name="img" type="file" />
	<form:textarea rows="10" path="m_memo" />
	</div>
	<button>저장</button>
</form:form>
</div>
</div>
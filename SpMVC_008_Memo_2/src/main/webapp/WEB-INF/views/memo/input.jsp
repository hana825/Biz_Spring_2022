<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
<style>
	form#memoVO {
		width: 60%;
		margin: 10px auto;
	}
	#memoVO input, #memoVO textarea {
		width: 90%;
		margin: 5px auto;
		padding: 8px;
	}
</style>
</head>
<body>
<%/*
	controller에서 model에 Attribute로 보낸 bbsVO 객체 데이터를 사용하여 form과 input 코드 자동화 하기
	spring form taglibs를 사용하여 구현한다.
*/ %>
	<form:form modelAttribute="memoVO" enctype="multipart/form-data">
		<form:input path="m_date" type="hidden"/>
		<form:input path="m_time" type="hidden"/>
		<form:input path="m_author" type="hidden"/>
		<form:textarea path="m_memo"/>
		<input name="up_file" type="file"/>
		<button>작성완료</button>
	</form:form>
</body>
</html>
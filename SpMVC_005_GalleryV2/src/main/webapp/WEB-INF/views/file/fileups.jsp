<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>upfiles</title>
</head>
<body>
	<form:form modelAttribute="bbsVO" enctype="multipart/form-data">
	<%/*
		<form:input>, <input> 차이점!
		bbsVO에 있는 객체만 form tag를 사용할 수 있다. 
	*/ %>
		<form:input path="b_subject" />
		<form:textarea path="b_content" />
		<input type="file" name="mFile" multiple="multiple" accept="images/*"/>
		<button>작성완료</button>
	</form:form>
	
</body>
</html>
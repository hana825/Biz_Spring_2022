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

<title>Insert title here</title>
</head>
<body>
	<h2>작성자 : ${MEMOS.m_author}</h2>
	<h2>작성일자 : ${MEMOS.m_date}</h2>
	<h2>작성시각 : ${MEMOS.m_time}</h2>
	<h2>메모내용 : ${MEMOS.m_memo}</h2>	
	
	<c:forEach items="${MEMOS.images}" var="IMAGE">
		<img src="${rootPath}/upload/${IMAGE.i_imageName}">
	</c:forEach>
	
</body>
</html>
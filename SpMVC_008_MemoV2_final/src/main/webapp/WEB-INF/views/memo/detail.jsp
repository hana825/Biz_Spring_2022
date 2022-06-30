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
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}

html {
	width: 100vw;
	height: 100vh;
}

body {
	background: #666;
	width: 100%;
	height: 95%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background: #666;
	color: #fff;
}

.memo {
	font-size: 1rem;
	color:#000;
	background:#ffc;
	display:block;
	height: 40rem;
    width: 30rem;
    resize: none;
    padding: 1em;
    margin: 20px auto;
	box-shadow: 5px 5px 7px rgba(33,33,33,.7);
}

img {
    width: 100%;
    height: 50%;
    display: block;
    object-fit: contain;
    margin: 0 auto;
}

a {
	text-decoration: none;
	display: inline-block;
	width: 119px;
	line-height: 30px;
	text-align: center;
	background-color: #333;
	color: #fff;
	font-weight: 300;
	border-radius: 5px;
	padding: 5px 8px;
	margin: 0 5px;
}
.title {
	display: flex;
    justify-content: space-between;
    padding: 10px 0;
}
#memo-box {
    font-weight: 900;
    font-size: 2rem;
    border-top: 1px solid #333;
}
</style>
</head>
<body>
<div class="memo">
	<img src = "${rootPath}/upload/${MEMO.m_up_image}" alt="${MEMO.m_image}" width="100px">
	<div class="title">
	<div>작성자 : ${MEMO.m_author}</div>
	<div>작성일자 : ${MEMO.m_date}</div>
	<div>작성시각 : ${MEMO.m_time}</div>
	</div>
	<div id="memo-box">${MEMO.m_memo}</div>
</div>
<div>
		<a href="${rootPath}/memo/${MEMO.m_seq}/update">수정</a>
		<a href="${rootPath}/memo/${MEMO.m_seq}/delete">삭제</a>
		<a href="${rootPath}/">홈으로</a>
</div>
</body>
</html>
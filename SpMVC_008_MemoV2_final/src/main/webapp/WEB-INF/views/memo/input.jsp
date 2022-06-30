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
		box-sizing: border-box;
		margin: 0;
		padding: 0;

	}
	html {
		width: 100vw;
		height: 100vh;
	}
	body {
		background:#666;
		width: 100%;
		height: 95%;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	form {
		text-align: center;
	}
	textarea.memo {
		font-size: 1rem;
	  	font-weight: normal;
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
	button {
	    display: inline-block;
	    width: 119px;
	    box-sizing: border-box;
	    line-height: 30px;
	    text-align: center;
	    background-color: #333;
	    color: #fff;
	    font-weight: 300;
	    border: 2px solid #ccc;
	    border-radius: 5px;
	    resize: none;
	    padding: 12px 20px;
	    margin: 0 5px;
	    border: none;
	    cursor: pointer;
	}
</style>
</head>
<body>
	<form method="POST" enctype="multipart/form-data">
		<input name="m_seq" type="hidden" value='<c:out value="${MEMO.m_seq}" default="0"/>'>
		<textarea class="memo" name="m_memo" placeholder="메모를 입력하세요" value="${MEMO.m_memo}"></textarea>
		<input name="file" type="file" accept="images/*"/>
		<button>메모 기록</button>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>주소록</title>
<style>
	* {
		box-sizing: border-box;
		margin: 0;
		padding: 0;
	}
	html {
		width: 100vw;
		height: 100wh;
	}
	body {
		width: 100%;
		height: 100%;
		display: flex;
		flex-direction: column;
	}
	header {
		background-color: #333;
		color: #fff;
		text-align: center;
	}
	header h1 {
		font-weight: 900;
		text-shadow: 1px 1px 1px black;
		height: 15vh;
		line-height: 15vh;
	}
	nav ul {
		display: flex;
		list-style: none;
		background-color: green;
		color: #fff;
	}
	nav li {
		padding: 12px 16px;
		margin: 1.5rem;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
</style>
</head>
<body>	
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />
</body>
</html>
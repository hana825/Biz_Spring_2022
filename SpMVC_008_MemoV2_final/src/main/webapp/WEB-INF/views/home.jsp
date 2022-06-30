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
<title>MEMO</title>
<style>
	body {
	  margin: 0 auto;
	  background:#666;
	  color:#fff;
	}
	 
	*{
	  margin:0;
      padding: 0 10px;
	}
	h1 {
		text-align: center;
    	line-height: 0rem;
	}
	header {
	    height: 5rem;
	    display: block;
	    padding: 10px;
	}
	header a:not(:first-of-type){
		float: right;
	}
	tbody {
		display: flex;
	    flex-wrap: wrap;
	}
	td {
	  font-weight: bold;
	  font-size: 2rem;
	}
	 
	td {
	  font-size: 1rem;
	  font-weight: normal;
	  color:#000;
	  background:#ffc;
	  display:block;
	  height:15em;
	  width:15em;
	  padding:1em;
	  box-shadow: 5px 5px 7px rgba(33,33,33,.7);
	  transform: rotate(-6deg);
	  transition: transform .15s linear;
	}

	
	tr:nth-of-type(even) td {
		transform: rotate(4deg);
		position: relative;
		top: 5px
	}
	tr:nth-of-type(3n) td {
		transform: rotate(-3deg);
		position: relative;
		top: -5px
	}
	tr:nth-of-type(5n) td {
		transform: rotate(5deg);
		position: relative;
		top: -10px
	}
	
	tr td:hover, tr td:focus {
		box-shadow: 10px 10px 7px rgba(0,0,0,0.7);
		transform: scale(1.25);
		position: relative;
		z-index: 5;
		cursor: pointer;
	}
	
	tr{
	  display: flex;
	  flex-wrap: wrap;
	  justify-content: center;
	}
	tr td {
	  margin:1em;
	 }
	 
	a {
		text-decoration: none;
	    display: inline-block;
	    line-height: 30px;
	    text-align: center;
	    background-color: #333;
	    color: #fff;
	    font-weight: 300;
	    border-radius: 5px;
	    padding: 5px 8px;
	    margin: 0 5px;
}
.time {
	display: flex;
	justify-content: space-between;
	border-bottom: 1px solid #333;
}
</style>
<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/memo.js?20220627009"></script>
</head>
<body>
	<header>
	<a href="${rootPath}/memo/insert">메모 작성하기</a>
	<c:if test="${empty USERNAME}">
		<a href="${rootPath}/user/login">로그인 하기</a>
	<h1>MEMO</h1>
	</c:if>
	<c:if test="${not empty USERNAME}">
		<a href="${rootPath}/user/logout">로그아웃 하기</a>
	<h1>${USERNAME} 님 반갑습니다!</h1>
	</c:if>
	</header>
	<table class="memo">

		<c:if test="${empty MEMOS}">
			<tr><td class="empty">메모가 없습니다</td></tr>
		</c:if>
		<c:forEach items="${MEMOS}" var="MEMO" varStatus="INDEX">
			<tr data-seq="${MEMO.m_seq}">
				<td>
				<div>
					# ${INDEX.count}
				</div>
				<div class="time">
					<p>${MEMO.m_date}</p><p>${MEMO.m_time}</p>
				</div>
				<div>
					<h2>${MEMO.m_memo}</h2>
				</div>
				</td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<nav>

		<ul>
			<li><a href="${rootPath}/">Home</a></li>
			<li><a href="${rootPath}/books/list">도서정보</a></li>
			<li><a href="${rootPath}/news/list">오늘의 뉴스</a></li>
			<li><a href="${rootPath}/movies/list">영화정보</a></li>
			<li><a href="${rootPath}/naver">네이버 체험</a></li>

			<%
			// 로그인 하지 않았을 때
			%>
			<c:if test="${empty USER}">
				<li><a href="${rootPath}/user/login">로그인</a></li>
				<li><a href="${rootPath}/user/join">회원가입</a></li>
			</c:if>

			<%
			// 로그인 했을 때는 MEMBER 객체에 로그인한 사용자 정보가 담겨 있다.
			%>
			<c:if test="${not empty USER}">
				<li><a href="${rootPath}/user/mypage">My Page(${USER.nickname})</a></li>
				<li><a href="${rootPath}/user/logout">로그아웃</a></li>
			</c:if>
		</ul>
	</nav>
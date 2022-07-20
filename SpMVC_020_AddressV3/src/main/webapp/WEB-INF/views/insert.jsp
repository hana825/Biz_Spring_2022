<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<script>
	const rootPath = "${rootPath}"
</script>
<form method="POST" class="w3-center">
	<input class="w3-input" name="a_seq" type="hidden" value='<c:out value="${ADDR.a_seq}" default="0"/>' />
	<input class="w3-input" name="a_name" placeholder="이름" value="${ADDR.a_name}"/>
	<input class="w3-input" name="a_tel" placeholder="전화번호"  value="${ADDR.a_tel}"/>
	<input class="w3-input" name="a_address" placeholder="주소"  value="${ADDR.a_address}"/>
	<button class="w3-btn w3-ripple ">저장</button>
</form>
<script src="${rootPath}/static/js/insert.js?ver=2022-07-20-003"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<style>
	.page-box {
		width: 90%;
		margin: 15px auto;
		padding: 16px;
		border: 1px solid #ccc;
	}
	.page-body {
		list-style: none;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.page-link {
		padding: 0.5rem 0.7rem;
		line-height: 1.25;
		color:  #007bff;
		background-color: #fff;
		border: 1px solid #dee2e6;
		text-decoration: none;
	}
	.page-link:hover {
		color: #0056b3;
		background-color: #e9cff;
		border-color: #dee2ef
	}
	.page-link:focus {
		z-index: 3;
		outline: 0;
		box-shadow: 0 0 0 0.2rem rgba(0, 123,255,0.25);
	}
	.page-item {
		margin: 2px;
	}
	.page-item.active .page-link {
		color: #fff;
		background-color: #007bff;
		border-color: #007bff;
	}
</style>
<div class="page-box">
	<ul class="page-body">
		<c:if test="${PAGE.startPageNo >1}">
			<li class="page-item"><a class="page-link" href="${rootPath}?pageno=1">1</a></li>
			<li class="page-item"><a class="page-link" href="${rootPath}?pageno=${PAGE.currentPageNo - 1}">&lt;</a></li>
			<li><a class="page-link">&middot;&middot;&middot;</a></li>
		</c:if>
		
		<c:forEach begin="${PAGE.startPageNo}" end="${PAGE.endPageNo}" var="page">
			<li class="page-item <c:if test="${PAGE.currentPageNo == page}"> active </c:if>"><a class="page-link" href="${rootPath}?pageno=${page}">${page}</a></li>
		</c:forEach>
		
		<c:if test="${PAGE.endPageNo != PAGE.finalPageNo}">
			<li class="page-item"><a class="page-link" href="${rootPath}?pageno=${PAGE.currentPageNo + 1}">&gt;</a></li>
			<li><a class="page-link">&middot;&middot;&middot;</a></li>
			<li class="page-item"><a class="page-link" href="${rootPath}?pageno=${PAGE.finalPageNo}">${PAGE.finalPageNo}</a></li>
		</c:if>
	</ul>
</div>
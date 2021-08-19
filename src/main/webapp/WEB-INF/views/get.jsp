<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script type="text/javascript" src="${path}/resources/js/boardList.js"></script>
<link href="${path}/resources/css/boardList.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<style>
</style>



<title>Insert title here</title>
</head>
<body>
	<h2>조회페이지</h2>
<div class="btn_wrap">
	<a class="btn" id="modify_btn">수정</a>
	<a class="btn" id="delete_btn">삭제</a>
	<a class="btn" id="list_btn">목록</a>
</div>
<form id="infoForm" action="/modify" method="get">
	<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno }"></c:out>'/>
	<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"></c:out>'/>
	<input type="hidden" name="amount" value='<c:out value="${cri.amount }"></c:out>'/>
	<input type="hidden" name="type" value="${cri.type }">
	<input type="hidden" name="type" value="${cri.keyword }">
</form>
	<div class="input_wrap">
	`	<input name="title" readonly="readonly" value='<c:out value="${pageInfo.title }"></c:out>'>
		<input name="writer" readonly="readonly" value='<c:out value="${pageInfo.writer }"></c:out>'>
		<input name="regdate" readonly="readonly" value='<c:out value="${pageInfo.regdate }"></c:out>'>
	</div>
	<div class="input_wrap">
	`	<input name="content" readonly="readonly" value='<c:out value="${pageInfo.content }"></c:out>'>
		
	</div>
	<div id="reply">
		<ol class="replyList">
			<c:forEach items="${replyList }" var="replyList">
				<li>
					<p>
					작성자: ${replyList.replyer }<br/>
					작성날짜: ${replyList.regdate}
					</p>
					
					<p>${replyList.replytext }</p>
				</li>
			</c:forEach>
		</ol>
	</div>
	
	<script type="text/javascript" src="${path}/resources/js/get.js"></script>
</body>
</html>
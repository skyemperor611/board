<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
   <script type="text/javascript" src="${path}/resources/js/boardList.js"></script>
  <link href="${path}/resources/css/boardList.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>

</script>
<style>

</style>



<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h2>메인화면</h2>
	<div class="search">
	<input type="checkbox" name="input_check" value='0' id="input_check"/>
<input type="hidden" name="input_check" value='1' id="input_check_hidden"/> 기간없음
<label for="period">기간선택</label>
<input type="text" name="sdate" id="sdate" value="" />
<input type="text" name="edate" id="edate" value="" />
<select name="searchType">
      <option value="t"<c:out value="title"/>>제목</option>
      <option value="c"<c:out value="contents"/>>내용</option>
      <option value="w"<c:out value="writer"/>>작성자</option>
      <option value="tc"<c:out value="title contents"/>>제목+내용</option>
    </select>
    <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>
     <button id="searchBtn" type="button">검색</button>
    
</div>
<div class="search_wrap">
	<div class="search_area">
	<select name="type">
		<option value="" <c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
		<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
		<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
		<option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
		<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목 + 내용</option>
		<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목 + 작성자</option>
		<option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':''}"/>>제목 + 내용 + 작성자</option>
		</select>
		<input type="text" name="keyword" value="${pageMaker.cri.keyword }">
		<button>검색</button>
	</div>
</div>
	<div>
		<table class="table table-bordered">
			<thead class="table-dark">
				<tr>
				<th scope="col" class="text-center" id="thd">게시물 번호</th>
				<th scope="col" class="text-center" id="thd">제목</th>
				<th scope="col" class="text-center" id="thd">등록자</th>
				<th scope="col" class="text-center" id="thd">등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vo" items="${list}">
					<tr>
						<th scope="row" class="text-center"><c:out value="${vo.bno}"/></th>
						<td class="text-center">
						<a class="move" href="<c:out value="${vo.bno}"/>">
							<c:out value="${vo.title}"/>
						</a>
						</td>
						<td class="text-center"><c:out value="${vo.writer}"/> </td>
						<td class="text-center"><c:out value="${vo.regdate}"/> </td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul	id="pageInfo" class="pageInfo">
				
				 <!-- 이전페이지 버튼 -->
                <c:if test="${pageMaker.prev}">
					<li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
				</c:if>
				
				<!-- 각 번호 페이지 버튼 -->
				<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
					<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
				</c:forEach>
				 <!-- 다음 페이지 버튼 -->
				<c:if test="${pageMaker.next }">
					<li class="pageInfo_btn next"><a href="${pageMaker.endPage+1 }">Next</a></li>
				</c:if>
				</ul>
			</div>
		</div>
		 <button id="regBtn" type="button" class="btn btn-xs pull-right btn-primary" onclick="location.href='enroll'">게시물쓰기</button>
		<form id="moveForm" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
		<input type="hidden" name="type" value="${pageMaker.cri.type }">
		 </form>
		 
	</div>
	
</div>
 <script type="text/javascript" src="${path}/resources/js/paging.js"></script>
</body>
</html>
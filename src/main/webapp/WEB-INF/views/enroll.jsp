<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<% request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 등록 페이지</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
<form action="/enroll" method="post">
	<div class="input_wrap">
		<label>title</label>
		<input name="title">
	</div>
	<div class="input_wrap">
		<label>content</label>
		<textarea rows="3" name="content"></textarea>
	</div>
	<div class="input_wrap">
		<label>writer</label>
		<input name="writer">
	</div>
	
	
	<button class="btn">등록</button>
	
</form>

<button class="btn" onclick="location.href='list'">목록</button>

<script>
    
    var result = ${result};
    
   if(result == 'enroll success'){
	   alert(result + '입니다.');
   } else {
	   alert(result + '실패입니다.');
   }
    

</script>


</body>
</html>
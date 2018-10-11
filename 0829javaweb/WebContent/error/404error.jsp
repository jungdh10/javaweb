<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404에러 페이지</title>
</head>
<body>
	<p>5초 후에 메인페이지로 이동합니다.</p>
	<h3>404. That’s an error.</h3>

The requested URL /%EC%9D%B4%E3%85%93%E3%85%81%E3%85%87%E3%84%B9%EB%8B%88%E3%85%8F was not found on this server. That’s all we know.
</body>
<script>
	setTimeout(function(){
		location.href="javabean/beancreate.jsp"
	}, 5000)
</script>
</html>









<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소스코드 포함하기</title>
</head>
<body>
	<%
		int num = 1000;
	%>
	<!-- includee.jspf 파일을 포함하기 -->
	<%@ include file="includee.jspf" %>
	<!-- includee.jspf 파일에 msg라는 변수가 있으므로 가져와서 사용이 가능 -->
	<div><%=msg %></div>
</body>
</html>






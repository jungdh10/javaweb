<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
	<%
		Cookie cookie = 
			new Cookie("popup", "1234");
		//쿠키의 수명 설정
		cookie.setMaxAge(60);
		//쿠키를 브라우저에 추가
		response.addCookie(cookie);
	%>
	<a href="cookieread.jsp">쿠키 읽기</a>
</body>


</html>










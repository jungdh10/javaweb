<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 쿠키에 저장되는 데이터가 한글이라서 UTF-8로 인코딩하기
위한 클래스를 사용하기 위해서 import -->    
<%@ page import="java.net.*" %>

<%
	String msg = "Java Web Programming";
	//utf-8로 인코딩
	String value = URLEncoder.encode(msg, "utf-8");
	//쿠키 생성
	Cookie cookie = new Cookie(
		"JSP", value);
	cookie.setMaxAge(60);
	//브라우저에 쿠키 저장
	response.addCookie(cookie);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
	<a href="cookieread.jsp">쿠키읽기</a>
</body>
</html>





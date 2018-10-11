<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처리 파일</title>
<%
	//post 방식에서의 인코딩 설정
	request.setCharacterEncoding("utf-8");

	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	System.out.println(email);
%>
</head>
<body>
	<h3>처리 파일입니다.</h3>
	<p>email:<%=email %></p>
	<p>pw:<%=pw %></p>
</body>
</html>







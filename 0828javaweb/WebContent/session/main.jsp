<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
</head>
<body>
	<%
		//세션에 저장된 데이터 가져오기 - 없으면 null 입니다.
		String id = 
			(String)session.getAttribute("id");
		String nick = 
			(String)session.getAttribute("nick");
		if(id == null){
			out.println("<a href='login.jsp'>로그인</a><br />");
		}else{
			out.println("<p>" + nick + "님 환영합니다.</p>");
			out.println("<a href='logout.jsp'>로그아웃</a><br />");
		}
	
	%>

	
</body>
</html>











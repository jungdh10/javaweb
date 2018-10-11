<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터를 읽어서 쿠키에 저장하고 원래 위치로 돌아가기</title>
</head>
<body>
	<%
		//lang 파라미터의 값 읽기
		String lang = request.getParameter("lang");
	
		//읽은 데이터를 쿠키에 저장
		Cookie cookie = new Cookie("lang", lang);
		response.addCookie(cookie);
		
		//원래 위치로 되돌아가기
		response.sendRedirect("langselect.jsp");
	%>
</body>
</html>














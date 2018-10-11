<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 읽기</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String nickname = request.getParameter("nickname");
	String phone = request.getParameter("phone");
	String description = request.getParameter("description");
	%>
	이메일:<%=email %><br />
	비밀번호:<%=password %><br />
	별명:<%=nickname %><br />
	전화번호:<%=phone %><br />
	자기소개:<%=description %><br />
	
	<%
		response.sendRedirect("페이지 경로");
	%>
</body>
</html>





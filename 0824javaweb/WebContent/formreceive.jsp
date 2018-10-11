<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼의 데이터 읽기</title>
</head>
<body>
	<%
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String[] hobbies = 
			request.getParameterValues("hobby");
	%>
	
	이메일:<%=email %><br />
	성별:<%=gender %><br />
	취미:<%for(String hobby:hobbies){ %>
		<%=hobby %>,
	<%} %>
</body>
</html>








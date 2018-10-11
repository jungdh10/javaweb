<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/error/errorview.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 발생 페이지</title>
</head>
<body>
	<!-- email 이라는 파라미터가 없는데 
	메소드를 호출해서 NullPointerException이 발생합니다.
	 -->
	<%= request.getParameter("email").trim() %>
</body>
</html>
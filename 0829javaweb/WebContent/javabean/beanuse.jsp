<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 이전 페이지에서 만든 bean 가져오기 -->
<jsp:useBean id="member" class="vo.Member" 
scope="request"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("<p>" + member.getId() + "</p>");
%>

</body>
</html>



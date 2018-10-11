<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 불필요한 공백 제거 -->
    <%@page trimDirectiveWhitespaces="true" %>
    <!--패키지 import -->
    <%@ page import="java.util.*" %>
    <%
    //현재 시간을 갖는 캘린더객체 만들기
    Calendar calendar = new GregorianCalendar();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 사</title>
</head>
<body>
<p> 
년도:<%=calendar.get(Calendar.YEAR) %></br>
월:<%=calendar.get(Calendar.MONTH) %></br>
일:<%=calendar.get(Calendar.DATE) %></br>
</p>
</body>
</html>
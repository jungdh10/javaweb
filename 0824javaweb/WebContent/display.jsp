<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out을 이용한 출력</title>
</head>
<body>
<%
	//문자열을 저장할 수 있는 List를 만들고 데이터를 저장
	List<String> list = new ArrayList<String>();
	list.add("Java");
	list.add("Python");
	list.add("C++");
	
	for(String imsi : list){
		out.println("<p>" + imsi + "</p>");
	}
%>

</body>
</html>











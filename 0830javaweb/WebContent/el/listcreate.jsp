<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배열과 리스트 생성</title>
</head>
<body>
	<%@ page import="java.util.*" %>
	<%
		List<String> list = new ArrayList<>();
		list.add("HTML");
		list.add("CSS");
		list.add("JavaScript");
		request.setAttribute("list", list);
		/*
		//배열을 생성
		String [] ar = 
			{"JavaScript", "Java", "Swift"};
		//배열의 데이터를 list라는 이름으로 
		//request 객체에 저장
		request.setAttribute("list", ar);
		*/
		
		//결과를 출력할 페이지로 포워딩
		RequestDispatcher dispatcher = 
			request.getRequestDispatcher(
				"listdisplay.jsp");
		dispatcher.forward(request, response);
	%>
</body>
</html>









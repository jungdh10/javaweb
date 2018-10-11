<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.util.*" %>
<%
	/*
	//Map 데이터 생성
	Map <String, Object> map = 
		new HashMap<>();
	map.put("name", "관리자");
	map.put("age", 49);
	
	//request에 저장
	request.setAttribute("data", map);
	*/
	
	vo.Person person = new vo.Person();
	person.setName("남자현");
	person.setAge(43);
	request.setAttribute("data", person);
	
	//결과를 출력할 페이지로 포워딩
	RequestDispatcher dispatcher = 
		request.getRequestDispatcher(
			"mapdisplay.jsp");
	dispatcher.forward(request, response);
%>

</body>
</html>








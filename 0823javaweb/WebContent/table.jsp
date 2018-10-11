<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%
	//테이블 형식의 데이터 만들기
	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object>map = new HashMap<>();
	map.put("name", "남자현");
	map.put("age", 34);
	list.add(map);
	
	map = new HashMap<>();
	map.put("name", "안중근");
	map.put("age", 28);
	list.add(map);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Map의 List 출력</title>
</head>
<body>
	<table border="1" align="center" width="300">
		<tr>
			<th>이름</th>
			<th>나이</th>
		</tr>
		<% for(Map imsi : list){%>
			<tr>
				<td><%=imsi.get("name") %></td>
				<td><%=imsi.get("age") %></td>
			</tr>
		<%} %>	
	
	</table>
</body>
</html>








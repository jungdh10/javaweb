<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
	List<Map<String, Object>> list = new ArrayList<>();

	Map<String, Object> map = new HashMap<String, Object>();
	map.put("num", 2);
	map.put("title", "가입인사");
	map.put("nickname", "아이린");
	map.put("regdate", "2018-08-30");
	map.put("readcnt", 54);

	list.add(map);

	map = new HashMap<String, Object>();
	map.put("num", 1);
	map.put("title", "테스트");
	map.put("nickname", "관리자");
	map.put("regdate", "2018-07-30");
	map.put("readcnt", 26);
	
	list.add(map);
	
	request.setAttribute("list", list);
	
	RequestDispatcher dispatcher = 
		request.getRequestDispatcher(
			"boardview.jsp");
	dispatcher.forward(request, response);
%>






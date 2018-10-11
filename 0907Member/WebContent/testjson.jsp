<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.json.*" %>
<%
	JSONObject obj = new JSONObject();
	obj.put("name", "안중근");
	
	JSONArray ar = new JSONArray();
	ar.put("안중근");
	ar.put("김좌진");
	ar.put("이봉창");
	ar.put("김원봉");
%>
<%=ar%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록 보기</title>
</head>
<body>
	<table border="1" align="center">
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<tr>
			<td>${board.num}</td>
			<td>
			<a href="boarddetail.jsp?num=${board.num}">
			${board.title}</a></td>
			<td>${board.nickname}</td>
			<td>${board.regdate}</td>
			<td>${board.readcnt}</td>
		</tr>	
	</table>
</body>
</html>










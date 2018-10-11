<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<style>
	div{color:red}
</style>
</head>
<body>
	<%
		if(session.getAttribute("msg") != null){
			out.println("<div>" + 
				session.getAttribute("msg") + "</div>");
		}
	%>
	<form action="loginprocess.jsp" method="post">
		아이디<input type="text" name="id" /><br />
		비밀번호<input type="text" name="pw" /><br />
		<input type="submit" value="로그인" />
		<input type="button" value="메인으로" 
		id="mainbtn"/>
	</form>
</body>

<script>
	document.getElementById("mainbtn")
		.addEventListener("click", function(){
			location.href = 'main.jsp'
	})
</script>

</html>











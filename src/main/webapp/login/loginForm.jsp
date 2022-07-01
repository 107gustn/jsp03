<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>loginForm.jsp<br>
	<% if(session.getAttribute("id") != null) { %>
		<%= session.getAttribute("id") %>님 로그인 상태입니다.
	<% }else{ %>

		<form action="chkLogin.jsp" method="post"> <!-- 중요한 정보를 처리할때는 내용을 숨기고자 post방식을 사용한다 -->
			<input type="text" name="id"><br>
			<input type="text" name="pwd"><br>
			<input type="submit" value="로그인"><br>
		</form>
	<% } %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if( session.getAttribute("id") == null) { /* 세션이 없으면 */
			response.sendRedirect("loginForm.jsp");
		}
	%>
	<%= session.getAttribute("id") %>님 안녕하세요!<br>
	저희 홈페이지에 방문해 주셔서 감사합니다.<br>
	즐거운 시간 되세요~<br>
	<button onclick="location.href='logout.jsp'">로그아웃</button>
	<button onclick="location.href='loginForm.jsp'">로그인페이지</button>
</body>
</html>
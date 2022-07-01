<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이동 합니다
	<%
		response.sendRedirect("http://www.google.co.kr"); /* 사용자에게 해당페이지로 바로 보내줌 */ /* response: 응답 */
	%>
</body>
</html>
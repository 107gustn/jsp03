<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% /* 변수 설정 */
		/* 현재페이지 내에서만 변수값 유지 */
		pageContext.setAttribute("name", "page"); /* 객체.변수설정(저장될 변수이름, 저장할 변수값) */
		/* 현재페이지, 연동되는 다음페이지까지 변수값 전달 가능 - forward기능 사용 */
		request.setAttribute("name", "request");
		/* 웹브라우저가 유지되는동안 변수값 유지 */
		session.setAttribute("name", "session");
		/* 서버가 다운되기 전까지 변수값 유지 */
		application.setAttribute("name", "application");
	%>
	
	<!-- 설정변수 이름을 통한 출력 -->
	page : <%= pageContext.getAttribute("name") %><br> 
	request : <%= request.getAttribute("name") %><br>
	session : <%= session.getAttribute("name") %><br>
	application : <%= application.getAttribute("name") %><br>
	
	<%
		request.getRequestDispatcher("secondPage.jsp").forward(request, response);/* forward: 해당 페이지로 바로 연결 */
	%>
	
	<hr>
	<a href="secondPage.jsp">secondPage.jsp</a>
</body>
</html>
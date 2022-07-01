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
		String id="1", pwd="1"; /* DB 설정 값 */
		String uid = request.getParameter("id"); /* 사용자가 입력해서 넘겨준 id */
		String upwd = request.getParameter("pwd"); /* 사용자가 입력해서 넘겨준 pwd */
		if(id.equals(uid) && pwd.equals(upwd)) { /* DB 설정 값과 입력한 값 비교 */
			session.setAttribute("id", "홍길동"); /* 세션 생성: 웹브라우저가 살아있으면 계속 유지 */
			response.sendRedirect("main.jsp"); /* 로그인 성공 시 */
		}else{
			response.sendRedirect("loginForm.jsp"); /* 로그인 실패시 다시 처음페이지로 보냄 */
		}
	%>
</body>
</html>
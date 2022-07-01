<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	h2 { color: aqua; }
</style>

</head>
<body>
	<h2>CARE LAB</h2>
	<h3>저희 사이트에 방문해 주셔서 감사합니다</h3>
	<% if(session.getAttribute("id") != null) { %>
		<%= session.getAttribute("id") %>님 로그인 상태 입니다<br>
		<button onclick="location.href='main.jsp'">main이동</button>
	<% }else{ %>
		<form action="chkLogin.jsp" method="post"> <!-- 중요한 정보를 처리할때는 내용을 숨기고자 post방식을 사용한다 -->
			<input type="text" name="id" placeholder="아이디"><br>
			<input type="text" name="pwd" placeholder="비밀번호"><br>
			<input type="submit" value="로그인"><br>
		</form>
	<% }
		boolean bool = true;
		Cookie[] cookieArr = request.getCookies();
		if( cookieArr != null) {
			for(Cookie c : cookieArr) {
				if(c.getName().equals("testCookie")) {
					bool = false;
				}
			}
		}
	%>
	
	<% if(bool) { %>
		<script type="text/javascript">
			open("popup2.jsp", "", "width=300, height=200, top=500, left=500")
		</script>
	<% } %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 쿠키: 사용자가 관리(장바구니, 자동로그인, 검색목록) / 세션: 서버가 관리(로그인유지) -->
	안녕하세요
	<%
		boolean bool = true;
		Cookie[] cookieArr = request.getCookies(); /* 요청시 사용자가 갖고있는 모든 쿠키를 얻어온다 */
		if( cookieArr != null) {
			for(Cookie c : cookieArr) {
				out.print("name : " + c.getName() + "<br>");
				out.print("value : " + c.getValue() + "<hr>");
				if(c.getName().equals("testCookie")) { /* 사용자가 쿠키가 있으면 팝업을 열지 않음 */
					bool = false;
				}
			}
			/* 
			for(int i=0; i<cookieArr.length; i++) {
				cookieArr[i].getName();
			}
			*/
		}
		
		Cookie cook = new Cookie("testCookie", "myCookie"); /* 쿠키생성(쿠키이름, 쿠키값) */
		cook.setMaxAge(5); /* 쿠키 유지시간 설정 */
		response.addCookie(cook); /* 서버에서 설정한 쿠키값 전달 */
	%>
	
	<% if(bool) { %>
		<script type="text/javascript">
			open("popup.jsp", "", "width=300, height=200, top=500, left=500")
		</script>
	<% } %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	1. 메모리 쿠키(브라우저 쿠키) : Client 강제로 지우지 않는한, 브라우저 닫기전까지는 유효
		소멸타임 : getMaxAge() > -1
		
	2. 파일 쿠키(소멸시간을 가지고 있음) : Client 강제로 지우지 않는 한 정해진 시간까지는 유효함
		setMaxAge(60) > 60초
		
		30일
		(30*24*60*60)  -> 일수*시간*분*초
		sexMaxAge(30*24*60*60)
 -->
 <%
 	Cookie co = new Cookie("bit", "hong");
 	co.setMaxAge(30*24*60*60); // 30일 
 	response.addCookie(co);
 %>
</body>
</html>
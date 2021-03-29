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
	web.xml 설정한 페이지로 처리
 -->
	<%
 	String data = request.getParameter("name");  // string은 예외 안남
 
 	String data2 = data.toLowerCase(); // 예외발생 : 파라메터가 없으면 null을 함수 적용
 									   // Cannot invoke "String.toLowerCase()" because "data" is null
 %>
 전달받은 내용 : <%= data %>
</body>
</html>
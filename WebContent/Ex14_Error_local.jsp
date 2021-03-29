<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="/error/commonerror.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	페이지마다 예외상황에 대한 처리 페이지 설정
	
	error : 최종 배포시 써야함 
			개발시에는 예외를 봐야됑
 -->
 <%
 	String data = request.getParameter("name");  // string은 예외 안남
 
 	String data2 = data.toLowerCase(); // 예외발생 : 파라메터가 없으면 null을 함수 적용
 									   // Cannot invoke "String.toLowerCase()" because "data" is null
 %>
 전달받은 내용 : <%= data %>
</body>
</html>
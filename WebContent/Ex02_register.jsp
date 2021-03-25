<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   request.setCharacterEncoding("UTF-8");
    	// 클라이언트 요청 데이터 받기
    	// Tomcat(내장된 객체)
    	// 웹에 사용되는 전용 객체(request, reponse) >> new하지 않음 -> 생성된 객체 바로 사용
    	// request : 요청 객체(클라이언트 정보를 취득 : request객체 얻는다(입력 데이터, IP, 브라우저 버전))
    	// response 응답객체 (서버가 가지고 있는 자원을 클라이언트에게 write할때 쓰임)
    	// Request request = new Request(); 이렇게 되어 있다고 가정
    	
    	//http://localhost:8090/WebJSP/Ex02_register.jsp?userid=hong&pwd=1004 
    	//http://localhost:8090/WebJSP/Ex02_register.jsp?userid=hong&pwd=1004&hobby=baseball&hobby=soccer
    	// ㄴ get방식 (form태그 안에 method를 get으로 바꿔줌) -> 배타고 갈거야~
    	String uid = request.getParameter("userid");
    	String pwd = request.getParameter("pwd");
    	String[] hobby = request.getParameterValues("hobby"); // 값이 여러개일때 쓰는 함수(hobby가 여러개일때)
    	                                                      // 웹에서 넝어오는건 다 배열이니깐 배열 선언
    	 
    	 /*
    	 	한글처리 -> 깨짐
    	 	POST방식은 항상 페이지 상단에 써야됨 -> request.setCharacterEncoding("UTF-8");
    	 	GET방식은 안써도 됨 -> Tomcat9부터 한글 안깨짐
    	 	
    	 	** 그냥 다 쓰자 **
    	 	
    	 */                                                     
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버에서 응답<br>
	ID값 : <%= uid %><br>
	PWD값 : <%= pwd %><br>
	당신의 취미는<br>
	<%
		for(String str : hobby){
	%>
			hobby:<%= str %><br>
	<% 		
		}
	%>
</body>
</html>
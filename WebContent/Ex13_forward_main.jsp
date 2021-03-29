<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	/* 
    		[요청에 대한 흐름 제어 ]
    		*공통점과 차이점 알기
    		
    		1. include
    		2.forward
    		
    		*공통점 : request라는 객체를 공유함(**중요**)
    		*차이점 : 제어권 -> include(제어권을 가지고 있다)
    						 forward(제어권을 넘겨준다) -> 요청에 따라서 다른 페이지에 서비스를 할수있다.
    						 						-> 주소는 동일한데 다른 페이지의 내용을 서비스 할수있음
    						 ㄴ 요청 주소는 동일한데 다른 페이지의 내용을 서비스할수 있음
    						 
    						 실제로 클라이언트가 요청한 페이지는 >> Ex13_forward_main.jsp인데
    						 실제로 클라이언트가 받는 페이지 정보는 >> A.jsp || B.jsp || C.jsp 이다
    						 
    						 http://localhost:8090/WebJSP/Ex13_forward_main.jsp?code=C
    						 
    						 
    		* 원리 : buffer한테 있음 >> buffer의 주인은 Ex13_forward_main.jsp
    						 
    				>> forward를 만나는 순간 buffer를 비워버린다 >> 비워진 buffer에 A.jsp || B.jsp || C.jsp를 담아서 서비스한다
    		
    	*/
    	
    	String code = request.getParameter("code");
    	String viewurl = null;
    	
    	if(code.equals("A")){
    		viewurl = "/forward/A.jsp";
    	}else if(code.equals("B")){
    		viewurl = "/forward/B.jsp";
    	}else if(code.equals("C")){
    		viewurl = "/forward/C.jsp";
    	}
    %>
    <jsp:forward page="<%= viewurl %>"></jsp:forward>
    <!-- 그러면 아래 코드는 의미가 있을까??? -> 디자인 의미가 없다. -> 자기껀 서비스가 되지 않는다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h3>나는 forward main 페이지 입니다.</h3>
</body>
</html>
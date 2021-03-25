<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 1.한글처리
    		request.setCharacterEncoding("UTF-8");	
    
    	// 2. 데이터 받기(request 객체)
    		String id = request.getParameter("id");	
    	
    		// request 객체는 (WAS 내장객체)
    		
    		// 192.168.0.123:8090/WebJSP/Ex04_request.jsp 요청 하나당 객체 1개
    		// 1. 요청 페이지당 한개가 자동생성됨 (request)
    		
    		// 2. 클라이언트가 서버에 전송을 요청 (클라이언트가 가지는 수 많은 정보가 전달 >> 이 정보를 받는 객체가 request)
    		// request = 입력값, IP, 브라우저 정보, 전송방식 등등 받아올 수 있음
    		//		   = new 없이 사용 가능함
    		
    		// request 내장객체는 클라이언트에서 서버로 요청할때 생성되는 
    		// HttpServletRequest 타입을 갖는 객체가 자동 생성되고 
    		// 그 주소를 request가 참조함
    		// HttpServletRequest request = new HttpServletRequest
    		
    		// request를 쓰면 클라이언트의 정보를 가질수 있다!!!!!!!!!!!!!!!!!!
    	
    	// 3. 로직처리(업무 DB연결)
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id : <%= id%><hr>
	접속한 클라이언트 IP : <%= request.getRemoteAddr() %><hr> <!-- 접속한 클라이언트 ip주소를 알 수 있음 -->
	서버(요청한 인코딩) : <%= request.getCharacterEncoding() %><hr>
	전송방식 : <%= request.getMethod() %><hr>
	포트 : <%= request.getServerPort() %><hr>
	context root(사이트명, 가상디렉토리, 홈디렉토리, default 웹 경로) : <%= request.getContextPath() %><hr>
</body>
</html>
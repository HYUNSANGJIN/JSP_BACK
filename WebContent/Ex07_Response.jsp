<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response(응답)</title>
</head>
<body>
		<!-- 
		Response : 응답
		Request : 요청
		
			웹 환경
			
			Client    ->    Server  (요청된 정보를 read (request 객체))
				  (request)  
				  
				  
			Server    ->    Client
				(response -> 응답결과 -> 클라이언트 브라우저 해석)	  
			(아파치 톰켓 : WAS : 자원 패키지명 : javax 패키지명으로 구성)
			
			Response 역할
			1. 표현식 : 출력 -> %=
			2. 페이지 이동처리 : sendRedirect
			    ㄴ ***javascript : location.href="페이지 주소(Ex01_Basic.jsp)" -> 이 페이지로 휘리릭 이동
			    ㄴ ***서버에게 페이지를 재요청 :    ㄴ f5(새로고침)	
			    
			java코드(재요청) 방법
			response.sendRedirect("페이지 주소(Ex01_Basic.jsp)") -> 서버에서 변경(client가 인지할수 있도록 코드가 바뀜)
			-> ㄴ 클라이언트 브라우저에선 어떻게 보일까??         ->                       ㄴ location.href="페이지 주소(Ex01_Basic.jsp)"
			
			      
			
		 -->
		 
		 1.일반적인 출력() : <%= 100 + 200 + 300 %>
		 2. sendRedirect : response 객체의 함수
		 <%
		 //	response.sendRedirect("Ex01_Basic.jsp");   // 페이지 재요청 결과는 동일하다
		   // ㄴ 아래 script 태그 방식이랑 동일함
		 %>
</body>
	<script type="text/javascript">
		location.href="Ex01_Basic.jsp";
	</script>
</html>
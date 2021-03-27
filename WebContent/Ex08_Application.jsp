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
/*
		webproject 생성 >> 기본 폴더 구조가 제공 >> web.xml(WebApp에 환경설정 할수있는)제공
		web.xml (환경설정 파일은 서버가 시작되면 가장 먼저 loading됨(해석되고 실행됨))
		 <welcome-file>default.html</welcome-file> -> 웹사이트 기본페이지 제공
		 ex) http://localhost:8090/WebJSP/  -> 기본 페이지 서비스 -> default.html 내용
	
		WebJSP -> 웹 프로젝트 이름, 가상 디렉토리, context root(문맥 흐름 전체)
		-> 웹경로(가상경로) -> http://localhost:8090/WebJSP/  
		-> 진짜 경로 -> C:\WEB(Back)\WebLabs\WebJSP
		
		WebJSP 웹 프로젝트가 서비스 하는 파일의 기본 경로(default)
		-> C:\WEB(Back)\WebLabs\WebJSP\WebContent
		-> 192.168.0.57:8090/WebJSP  >> WebContent 안에 자원을 서비스 하겠다
		
		-> 자원(서비스 하는 파일) : html, htm, css, js, json, txt, jsp
		-> WebContent >> a.jsp, b.jsp, c.jsp -> 3개의 페이지가 공유할 수 있는 자원은 어디에???
		
		-> 모든 자원은 페이지가 scope
		ex)a.jsp에서 <%  String s = "A" .. >  s변수는 a.jsp가 scope
		ex)b.jsp에서 <%  String s = "A" .. >  s변수는 b.jsp가 scope
		ex)c.jsp에서 <%  String s = "A" .. >  s변수는 c.jsp가 scope
		
		-> a.jsp, b.jsp, c.jsp 에서도 같은 자원을 쓰고 싶을땐?
		ㄴ web.xml 화녕설정 >> 서버 시작 >> 가장 먼저 해석
		
		  <context-param>
			  	<description>아무거나 써도됨</description>
			  	<param-name>email</param-name>
			  	<param-value>webmaster@bit.or.kr</param-value>
	 	 </context-param>
		
		Application 객체(WAS제공)
		web.xml 설정 read
		
	*/
	
	
	/*
		WebContent >> WEB-INF >> lib
				   >> WEB-INF >> web.xml
				   >> a.jsp
				   >> b.html
		
		WEB-INF란?? : 보안폴더임
		보안폴더란?? : Client가 주소를 알고있다 하더라고 접근 불가한 경로임
		
		의도적으로 주소로 들어가면 서버는 404를 전달
		
		개발자 문제점) 
		Ex02_register.html -> 요청 -> 처리 -> Ex02_register.jsp -> 하지만 페이지 안열림
		클라이언트가 Ex02_register.jsp 페이지를 직접 접근 못하게 막음
		WebContent 폴더 안에있는 자원은 client가 다 접근할수 있음
		하지만!!!! WEB-INF폴더는 접근 못함
		
		그래서 ** 실제 현업 개발코드는 WebContent폴더에 없음
		1. Client 직접 요청하는 파일 : main.html, login.html, register.htm  -> WebContent에 놔둠
		2. Client 직접 요청 해서는 안되는 파일 : WEB-INF >> views >> member >> register.jsp
									또는  WEB-INF >> views >> admin >> admin.jsp
	*/
%>

<h3>Application</h3>

<%
	String param = application.getInitParameter("email");
	out.print("<h3>" + param + "<h3>");
	out.print("<hr>");
	String param2 = application.getInitParameter("FilePath");
	out.print("<h3>" + param2 + "<h3>");
%>



</body>
</html>
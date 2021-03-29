<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="kr.or.bit.Emp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		Tomcat제공(WAS) : 기본적인 내장 객체가 있다 -> new를 할 필요가 없다
		1. request(요청 객체) : 클라이언트의 정보를 담고있음
		2. response(응답 객체) : 특정 페이지 이동, 정보 출력, 쿠키 쓰기
		3. application(전역 객체) : web.xml 자원 접근 read, 전역변수
		4. session(고유 객체) : 접속한 사용자에게 부여되는 고유한 객체 -> 고유한 변수를 생성가능
		5. out(출력)
========================================================================================
		
		**session객체 (활용도 좋음)
		[내부에 session변수 생성]
		scope : a.jsp(session.setAttribute("member"); 변수생성)
				b.jsp(session.getAttribute("member"); 사용가능)
				 ㄴ ** session의 scope은 모든 페이지니깐!!!!!
				 
=========================================================================================
			 
		session 변수는 (현재 WebContent 폴더 안에있는 모든 페이지에서 사용 가능함)
		Life-cycle : 1. session변수는 session객체와 동일합니다
					 2. session소멸 : 서버의 리부팅, Tomcat 재실행, session.invaildate() -> 다 날라감
					 
==========================================================================================					 
					 
		**application 객체
		[내부에 application변수가 생성] -> 전역변수(모든 session이 공유할수 있는 자원)
												ㄴ 접속한 모든 사용자...
		scope : 현재 WebContent 폴더 안에있는 모든 페이지에서 사용 가능함 >> java >> static
		Life-cycle : 소멸(서버 리부팅) , Tomcat 재실행

===========================================================================================		
		
		**request 객체
		[내부에 변수 생성] : request.setAttribute("type","A");
		scope : 요청 페이지(login.jsp >> 요청당 request 생성 >> scope >> page)
		****예외적으로****
		login.jsp >> ok.jsp(include or forward)하고 있다면 request객체는 ok.jsp에서도 공유 가능
		
	 -->
	 <%
	 		Emp emp = new Emp();
	 		emp.setEmpno(2000);
	 		emp.setEname("홍길동");
	 		
	 		session.setAttribute("empobj", emp);
	 		
	 		// 어느 페이지에서나 사용가능
	 		Emp e = (Emp)session.getAttribute("empobj");
	 		out.print(e.getEmpno()+"<br>");
	 		out.print(e.getEname()+"<br>");
	 		
	 		// request
	 		request.setAttribute("who", "king");
	 		// 기본은 현재 페이지
	 		String who = (String)request.getAttribute("who");
	 		out.print(who);
	 		
	 		/* 
	 				<jsp:include page="b.jsp"></jsp:include>
	 				
	 				<jsp:forward page="c.jsp"></jsp:forward>
	 				
	 				b.jsp -> application변수 가능  -> include 되어있어서 가능
	 				 		 session 변수 가능     -> include 되어있어서 가능
	 				 		 request 변수 가능     -> include 되어있어서 가능
	 				 		 
	 				c.jsp -> application변수 가능  -> include 되어있어서 가능
	 				 		 session 변수 가능     -> include 되어있어서 가능
	 				 		 request 변수 가능 	 -> include 되어있어서 가능	   
	 		*/
	 %>
	 
</body>
</html>
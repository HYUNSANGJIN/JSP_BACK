<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//java 코드
	Date day = new Date();
	/*
		JSP 페이지 : UI(html + css + javascript) + (JAVA코드를 쓸수있음) -> 단, java코드는 <% 스크립트 릿 안에 구현해야함
		>> 디자인코드 + 서버로직을 갖고 있는 코드 : 혼재된 방식(섞여져있음)-> (불편함)
		
		servlet + jsp
		>> java 웹 기반으로 기술(x) -> 계산기, 그림판, 윈도우 프로그램 -> 웹(servlet)
		>> java 페이지로 web 서비스 하자 >> login.java -> 단점(배우기 어려움, 디자인 작업이 어려움)
		
		>> JSP(UI) >> 장점 > html에서 작업했던 모든 작업이 가능(디자인 작업이 편해짐) -> 단점(java코드는 <% 스크립트 릿)
		
		>> servlet 웹을 해야할가?? jsp로 웹을 해야할까??
	    >>  ㄴ 둘다써라 servlet(java 코드) + jsp(UI) >> MVC패턴
				                                     ㄴ MVC란?? Model(DAO, DTO) : 객체 만드는거 순수한 java
				                                    		   View(UI) : JSP
				                                    		   Controller : java코드인데 웹을 제어(응답, 요청 처리) -> servlet
				                                    	ㄴ 잘하는 놈에게 잘하는거 시키자!
		
		>> 중간 프로젝트 : model2 기반의 MVC패턴
				                                    	
		>> JSP와 html 차이점
		>> Tomcat(WAS)처리
		>> 1. html : web server(클라이언트 요청 -> 응답)
		>> 2. jsp : was를 통해서 컴파일 >> class 생성 >> 실행(가지고 있는 코드 : text, html, script) >> 전달
		>> WAS(jsp) > compile(a.jsp.java) > a.jsp.class > 실행 > 정적 + 동적(클라이언트가 인지할수 있도록 바꾸는것) >> 정적파일(text, html, script)	
		>> ASP(ASPX), PHP, JSP 장점 : 코드 노출이 안된다 >> 보안상 좋다
		
		>>컴파일 > 실행(a.jsp.class) > 전달
		>> A 친구 요청 >> new.jsp >> was는 new.jsp 실행여부 확인 >> 있다면 >> 그대로 서비스
				                                    	     없다면 >> 컴파일 >> 실행
		>> 개발자 new.jsp 수정... 코드 수정 인지 WAS >> WAS재컴파일.. 걱정할 필요없음
		>> 컴파일 코드 확인
		>> C:\WEB(Back)\WebLabs\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\WebJSP\org\apache\jsp
				                                    	     
		JSP 구성요소
		1. 선언부 : page 지시자(사용언어정의, 인코디, import)
		   ㄴ <%@ page language="java"
		2. 스크립트 요소
		   ㄴ 스크립트 릿 <%  java 코드
		   ㄴ 표현식(출력방법) : 출력하는 대상(client 브라우저) -> <%= : 전달 내용을 쓰면됨 -> = : (response 응답하다)
		   ㄴ 선언부(공통자원(scope page)) : 공통함수 정의 -> <%! : 공통함수
	*/
%>    
<%!
	// 이 페이지에서 사용하는 공통함수를 만드세요
	public int add(int i, int j){
	return i+j;
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSP</h3>
	<%= day %><br>
	<%= add(10,20) %><br>
	<%
		int result = add(100,200);
	%>
	<hr>
	합 결과 : <%= result %>
</body>
</html>
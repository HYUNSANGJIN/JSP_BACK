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
		* 정보(데이터)를 저장한다는 것은 뭘까??? 저장하는 장소는 어디일까??
			ㄴ클라이언트(개인 로컬 PC)에 저장 할것이냐
			ㄴ서버(웹 서버 or DB서버)에 저장 할것이냐!
		
			정보(데이터, 자료)를 어디에 저장하느냐(보관)??
			고민(기준점): 보안 요소(정보의 중요성), 소멸(일시적인 저장데이터 or 영속적으로 보관하는 데이터)
			
			Client(Local PC : 웹브라우저)
			1. Cookie(메모리 쿠키, 파일 쿠키(local 디스크에 txt파일 형태로 저장됨 , 내용(암호화))) >> 소멸시기
			   단점 : 크기 제안적, 사용이 조금 불편함
			   
			2. Local storage(key, value) 형태로 저장
			
			Server(웹 서버 : WAS)
			1. server memory : session객체(사이트에 접속하는 사용자마다 부여하는 고유한 식별값) >> 서버가 리부팅되거나 서버를 끄거나하면 데이터는 [ 소멸 ]됨
			2. server memory : Application객체(사이트에 접속하는 모든 사용자가 공유하는 객체) >> 서버가 리부팅되거나 서버를 끄거나하면 데이터는 [ 소멸 ]됨
			3. server 영속적(서버가 리부팅, 정지되어도 남아있게하는것 : 파일.txt) >> 관리가 힘들다
			4. DB server : 보안이 좋다, 영속적인 관리가 가능, 비용은 추가됨
			
 -->
 <%
 	Cookie mycookie = new Cookie("cname","1004");
 	// ㄴ 쿠키 객체 생성 파라메터값 까지 완료!
 	// ㄴ 내 사이트에 접속한 브라우저(client)에게 전달 >> response
 	
 	response.addCookie(mycookie);
 %>
 <a href="Ex17_Cookie_Read.jsp">Cookie read</a>
</body>
</html>
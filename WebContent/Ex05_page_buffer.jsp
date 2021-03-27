<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page buffer="8kb" autoFlush="true" %>
    <!-- 구현하지 않아도 Default 8kb, autoflush -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
				// out객체(WAS) >> java -> System.out.println() 역할과 동일
				// buffer에 담아서 출력
				for(int i=0; i<10; i++){
					out.print("<b>" + i + "<b><br>");
				}
				// jsp 페이지에 더 이상 buffer에 담을 내용이 없으면 자동으로 flush함
				
		%>
</body>
</html>
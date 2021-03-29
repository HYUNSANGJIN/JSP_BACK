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
		접속한 client 브라우저가 가지고 있는(domain 별로) Cookie read
		
		
 -->
 <%
 	Cookie[] cs = request.getCookies();
 	if(cs != null || cs.length >0){
 		for(Cookie c : cs){
 			out.print(c.getName()+"<br>"); // cname
 			out.print(c.getValue()+"<br>"); // 1004
 			out.print(c.getMaxAge()+"<br>"); // -1(소멸 시간이 없다) -> 메모리만 쓰겠다!
 			out.print(c.getDomain()+"<br>"); // null
 		}
 	}
 	
 	/* 
 				JSESSIONID
				1852F0E494F883A65F86F3FCE2A4E30C
				-1
				null
				cname
				1004
				-1
				null
 	*/
 %>
</body>
</html>
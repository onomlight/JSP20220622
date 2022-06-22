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
		선언문	
		서블릿의 멤버변수 / 메서드를 선언할 수 있는 영역
		(JSP페이지안에서)
		톰캣서버 동작동안에는 유지가 된다.
	
	  -->
		<%!
			//맴버변수
			int a = 0;
			public int addone(){
				a++;
				return a;
			}
			
		%>
		변수 a의 값 = <%=addone()  %> <br>
</body>
</html>
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
	 -->
	<%!
	//변수 추가
	
	String hello = "Hello World";
	// 메서드 추가
	public String testFunc(){
		System.out.println("선언문테스트");
		return "ABCD";
	}
	%>
	
	<!-- 표현식 -->
	
	<%=hello %><br>
	<%=testFunc() %><br>
</body>
</html>
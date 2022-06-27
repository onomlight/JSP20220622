<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Bean 생성 -->>
	<jsp:useBean id="bean" class="Ch05.TestBean" scope="page"/>
	<!-- 값 등록 -->
	<jsp:setProperty property="msg1" name="bean" value="msg2-value"/>
	
	<!-- Forward -->
	<jsp:forward page="03b.jsp"/>
</body>
</html>
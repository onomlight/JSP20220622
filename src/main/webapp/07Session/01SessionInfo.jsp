<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H1>세션정보확인</H1>
<%
	String id = (String)session.getAttribute("ID");
	String pw = (String)session.getAttribute("PW");
	String SID = session.getId();
	int intervalTime = session.getMaxInactiveInterval();
	
%>
세션ID:<%=SID %><br>
계정ID:<%=id %><br>
계정ID:<%=pw %><br>
세선 유지 시간 : <%=intervalTime %><br>
</body>
</html>
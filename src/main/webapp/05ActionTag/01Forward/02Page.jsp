<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%-- <%
			request.setAttribute("02Page", "02Page에서만든 데이터");
		%> --%>
			<%@ page import="java.net.*"%>
			<% request.setCharacterEncoding("UTF-8"); %>
		<jsp:forward page="03Page.jsp" >
		<jsp:param name="02Page" value="02Page TEST입니다" />
	</jsp:forward>
		
</body>
</html>
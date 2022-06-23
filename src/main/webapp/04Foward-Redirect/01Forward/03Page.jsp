<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%@page import="Ch03.*" %>
		<%
			request.setAttribute("03Page","03Page에서 전달하는 내용");
			SampleDTO sample = new SampleDTO("홍길동","대구");
			request.setAttribute("sample",sample);
			
			RequestDispatcher dispatcher=
			request.getRequestDispatcher("04Result.jsp");
			dispatcher.forward(request, response);
			// 이동하는 방식을 forward 을 사용할거다 / 01 - > 02 - > 03 -> 04 순으로 내용이 전달됨  02Page.jsp?userid=홍길동&pwd=1234 에서 머물러서 
					//리퀘스트가 머물러서 진행을 함 
					// 2번부터 유지가되어서 3,4번으로 진행됨 
		%>
</body>
</html>
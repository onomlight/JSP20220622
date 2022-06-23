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
			request.setAttribute("03Page","03Page에서전달하는 내용");
			
			SampleDTO sample = new SampleDTO("홍길동","대구");
			request.setAttribute("sample",sample);
		
			/* 리다이렉트 방식 */
			response.sendRedirect("04Result.jsp?Retest=테스트문장입니다");
			
			//01->02->03->04 순으로 가나 남아있는 페이지는 04로 날아감 
			 
		%>
</body>
</html>
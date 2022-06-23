<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<% 
		int dan = Integer.parseInt(request.getParameter("dan"));
		// 형변환을 integer.parseint로 정수로 변환시켜야함
		for(int i=1;i<10;i++){
		%>
			<%=dan %>X<%=i %>=<%=dan*i %><br>
		
		<%
		}
		%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
// 분리가가능함 
		<ul>
			<%
			String str = "Test";
				for(int i=0;i<10;i++)
				{
					%>
					<li><%=str+i %></li>
					<%
				}
			%>
		</ul>
</body>
</html>
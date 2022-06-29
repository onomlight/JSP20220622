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
		String id = request.getParameter("userid");
		String pw = request.getParameter("pwd");
		
		if(id.equals("abcd")&&pw.endsWith("1234"))
		{
			session.setAttribute("ID", id);
			session.setAttribute("pw", pw);
			response.sendRedirect("02Main.jsp");
		}
		else
		{
			response.sendRedirect("02LoginForm.jsp");
		}
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sessionSave" class="Ch07.SessionSave" scope="application"/>
	<%
			String id=request.getParameter("userid");
			String pw = request.getParameter("pwd");
			
			 
			session.setAttribute("ID",id);
			session.setAttribute("PW", pw);
			session.setMaxInactiveInterval(60*15);
			
			//세선정보 확인
			
			sessionSave.AddSession(id, session);
			
			response.sendRedirect("04Main.jsp");
			
			
			 
		 
			 
	%>

</body>
</html>
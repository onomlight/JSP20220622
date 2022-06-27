<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 빈객체 생성  -->
	<jsp:useBean id="test1" class="Ch05.SimpleBean" scope="page"></jsp:useBean>
	<!-- scope = 다양한 옵션을 줄 수 있도록 하는 명령어 / 이 페이지에서만 유지 , 사용하겠다고 하는 명령어 -->
	
	<!-- 빈객체 속성값 저장 -->
	<jsp:setProperty property="msg1" name="test1" value="MSG1!의 값!"/>
	<jsp:setProperty property="msg2" name="test1" value="MSG2!의 값!"/>
	
	<!-- 빈객체 속성값 확인 -->
	MSG1 : <jsp:getProperty property="msg1" name="test1"/><br>
	MSG2 : <jsp:getProperty property="msg2" name="test1"/><br>
	<hr>
	
	<%@page import="Ch05.SimpleBean" %>
	<%
		SimpleBean bean = new SimpleBean();
		bean.setMsg1("메세지1");
		bean.setMsg2("메세지2");
	%>
	
	MSG1 = <%=bean.getMsg1() %><br>
	MSG2 = <%=bean.getMsg2() %><br>	
</body>
</html>


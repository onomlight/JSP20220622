<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션객체에 값넣기</h1>



 

<!--  세션아이디를 가지고 특정작업을 할 예정일 경우 연결 지속적으로 하기 위해 세션아이디(쿠기설정)이 들어감
	리퀘스트나 리스판스와 무관하게 유지된다 / 특정상황에서는 유지됨 / 첫번째에서는 아이디를 부여하고 두번째접속시에는 유지됨
 -->

<%
	String id = "adcb";
	String pw = "1234";
	
	session.setAttribute("ID",id);
	session.setAttribute("PW",pw);
	session.setMaxInactiveInterval(20);
%>

<a href="01SessionInfo.jsp">세션정보확인</a>
</body>
</html>
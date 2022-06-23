<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!--
		[문제]
		1. ch03안의 BookDTO를 만든다
		2 BookDTO의 속성은  
		private String BookCode
		private String BookName
		private String Publisher
		로 지정, 생성자,getter and setter , ToString() 모두 만든다
		3 Index.jsp에서 form 태그를 만들어
		BookCode,BookName,Publicsher를 입력받아
		05Main,jsp으로 내용전달한다
		
		4 05Main에서는 BookDTO객체를 만들어 전달받은 파라미터 값을 저장하는 객체를 새성하고
		화면에 출력한다
		
		5 이중 하나라도 비어있는 값이 있다면 05ErroPage로 넘겨서 메세지 유형을 출력한다
		ex) BookName 비어있을시 'BookName이 입력되지 않습니다'가 05ErrorPage의 출력내용 
		 -->
		 
		 
		 <%@page import="Ch03.BookDTO" %>
<%
	String BookCode = request.getParameter("BookCode");
	String BookName = request.getParameter("BookName");
	String Publisher = request.getParameter("Publisher");
	
	if(BookCode=="" || BookName=="" || Publisher=="")
	{
		throw new Exception("모든 속성값 전달이 되지 않았습니다..");
	} 
	 
	BookDTO dto = new BookDTO(BookCode,BookName,Publisher);
	out.println("확인 : " + dto);
%>
</body>
</html>
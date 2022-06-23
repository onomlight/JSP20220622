<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form method="get" action="04googoodan.jsp">
			<fieldset>
				<legend>구구단</legend>
				<label>단수</label>
				<input type="text" name="dan"> <input type="submit">
			</fieldset>
		</form>
<hr>
		<% 
		try{
		int dan = Integer.parseInt(request.getParameter("dan"));
		// 형변환을 integer.parseint로 정수로 변환시켜야함
		for(int i=1;i<10;i++){
		%>
			<%=dan %>X<%=i %>=<%=dan*i %><br>
		
		<%
		}
		}catch(Exception e){}
		%>
		<!--
		try catch가 있어야함 / 최초접근시에 문제가발생되어 아무것도 진행되지않음 
		 -->
</body>
</html>
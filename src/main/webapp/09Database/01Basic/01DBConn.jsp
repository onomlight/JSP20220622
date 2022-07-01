<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.*,java.util.*" %>
	<%
	
		String url = "jdbc:oracle:thin:@localhost:1521:xe";//url접속
		String id = "c##book_ex"; // 아이디
		String pw = "1234"; // 패스워드 접속
		Connection conn =null;
		try{
			//드라이버 적제
		Class.forName("oracle.jdbc.driver.OracleDriver");
			//DB에 연결 
		conn = DriverManager.getConnection(url,id,pw);
		System.out.println("Connected...");
		
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{conn.close();}catch(Exception e1){e1.printStackTrace();}
		}
	
	%>

</body>
</html>
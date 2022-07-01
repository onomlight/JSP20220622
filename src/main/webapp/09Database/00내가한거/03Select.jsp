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
	
		String url = "jdbc:oracle:thin:@localhost:1521:xe"; //URL
		String id = "c##book_ex";	//ID
		String pw = "1234";		//PW
		
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
		//드라이버 적재
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//DB에 연결 
		conn = DriverManager.getConnection(url,id,pw);
		System.out.println("Connected...");
		//쿼리객체 
		pstmt = conn.prepareStatement("select * from book_tbl");
		
		//쿼리 전송
		rs = pstmt.executeQuery();
		
		// book_tbl의 no가 100-150 사이의 행만 셀렉트해서 출력
		// 4 테이블의 no가 20~30사이 행만 삭제되도록합니다 / delete
		while(rs.next())
		{
			/* between() */
			out.print(rs.getInt("no")+" | ");
			out.print(rs.getInt("BookCode")+" | ");
			out.print(rs.getString("BookName")+" | ");
			out.print(rs.getString("Publisher")+" | ");
			out.print(rs.getInt("TotalPage")+" | ");
			out.print(rs.getInt("Amount")+" <br> ");
			
		}
		
		
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			//자원제거 꼭 하기
			try{rs.close();}catch(Exception e1){e1.printStackTrace();}
			try{pstmt.close();}catch(Exception e1){e1.printStackTrace();}
			try{conn.close();}catch(Exception e1){e1.printStackTrace();}
		}
	
	%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="sessionSave" class="Ch07.SessionSave" scope="application" />
	<jsp:useBean id="Cartbean" class="Ch07.CartRepository" scope="application" />
	
	<%@page import="java.util.*,Ch07.*" %>
	<%
			String id=request.getParameter("userid");
			String pw = request.getParameter("pwd");
					
			session.setAttribute("ID",id);
			session.setAttribute("PW", pw);
			session.setMaxInactiveInterval(30);
			
			//세션정보 저장
			sessionSave.AddSession(id, session);
			
			//계정 전용 Arraylist<ProductDTO>를 생성 + 연결
			Set<String> set = Cartbean.cart.keySet();
			boolean flag=false;
			for(String mapid:set)
				//모든아이디에 있는 정보를 셋에 넣어줌
			{
				if(mapid.equals(id)){ // 접속할려고하는 아이디에 일치하는지 확인
					flag=true; // 플래그가 맞는지 확인함
				}
			}
			if(!flag)
			{
				ArrayList<ProductDTO> list = new ArrayList();
				Cartbean.cart.put(id,list);
			}
			
			System.out.println("총 저장 MAP : " + Cartbean.cart.size());
			response.sendRedirect("05Main.jsp");
			
	%>

</body>
</html>
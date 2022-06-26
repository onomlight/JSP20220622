<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		String border =request.getParameter("border");
		String bgcolor =request.getParameter("bgcolor");
		String height =request.getParameter("height");
	%>
    <div id=header>
    	헤더입니다!	
    </div>
    
    	<script>
    		header = document.getElementById("header");
    		header.style.border="<%=border%>";
    		header.style.backgroundColor="<%=bgcolor%>";
    		header.style.height="<%=height%>"; 
    		
    	</script>
    
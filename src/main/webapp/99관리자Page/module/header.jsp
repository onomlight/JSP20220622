<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@page import="java.io.*" %>
	<%	  
		 Reader rin = new FileReader("C:\\style\\header\\style.txt");
		 String style="";
		 while(true)
		 {
			 int data = rin.read(); // 데이터를 읽고 단 후 만약
			 if(data==-1)
			 	break;
			style+=(char)data+"";
		 }//캐릭터형을 형변환하기위해서 문자열로 바꿔주기 위함
		 
		 System.out.println("style : " +style);
		 String[]arr= style.split(" ");
		 
		 String border = arr[0] + " "+ arr[1] + " "+arr[2];
		 String bgcolor = arr[3];
		 String height = arr[4];
	%>
    <div id=header>
    	헤더입니다!	
    </div>
    <script>
    	header = document.getElementById("header");
    	header.style.border="<%=border%>";
    	header.style.backgroundColor="<%=bgcolor%>";
    	header.style.height="<%=height%>"+"px";
    </script>
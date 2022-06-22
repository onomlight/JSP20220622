<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
//선언문 // 클래스 , 함수 만들때 사용하는것
		<%!
		int a = 0;
		%>
		<!--  
			스크립틀릿
			
			서블릿파일내의 특정함수(Service함수) 내에서
			지정되는 자바코드 설정한다
			변수생성시 지역변수
			함수 생성불가
			절차지향문법(반복/if문)적용가능
		-->
		<% 
			String str1 = "Scriptlet 테스트";
			String str2 = "Local 변수";
			int b=0;
			a++;
			b++;
			/* public void testfunc(){} */
		%>
			str1=<%=str1 %><br>
			str2=<%=str2 %><br>
			a = <%=a %><br>
			b = <%=b %><br>
			// b는 지역변수 / 함수안에 있는 변수이기때문에 값이 늘어나지않음
</body>
</html>

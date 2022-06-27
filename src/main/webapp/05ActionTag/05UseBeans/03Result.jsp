<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%@page import="Ch05.MemberBean" %> --%>
	<%
		/* String name=request.getParameter("name");
		String age=request.getParameter("age");
		String addr=request.getParameter("addr");
		MemberBean bean = new MemberBean();
		bean.setAddr(addr);
		bean.setAge(age);
		bean.getName(name); */
	%>
	<%-- 	<jsp:useBean id="bean" class="Ch05.MemberBean" scope="page"></jsp:useBean>
		<jsp:setProperty property="*" name="MemberBean" />  --%>
		<%-- 확인 : <%=bean.toString() %><br> --%>
		<jsp:useBean id="MemberBean" class="Ch05.MemberBean" />
		<jsp:setProperty  name="MemberBean" property="*" />
		
		확인 : <%=MemberBean.getEmail() %><br>
		확인 : <%=MemberBean.getPwd() %> <br>
		확인 : <%=MemberBean.getAddr1() %><br>
		확인 : <%=MemberBean.getAddr2() %><br>

</body>
</html>
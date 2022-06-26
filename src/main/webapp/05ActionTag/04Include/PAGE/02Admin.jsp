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
		1 PAGE 폴더의 02Admin.jsp가 Card 이미지명을 02ChangeCard로 전달
		2 ChangeCard.jsp는 파일IO를 이용해서 C:\card\cardname.txt에 각각의 카드명을 저장
		3 INCLUDES안의 card.jsp 에서 C:\card\cardname.txt에 저장된 각각의 파일명을 불러와서 이미경로에 표현식을 이용하여 적용 
	 -->
	 
	 <h1>카드이미지 변경사이트</h1>
	<form action=02ChangeCard.jsp>
		<fieldset>
			<legend>배너이미지 변경하기</legend>
			IMG1 : <input name=img1><br>
			IMG2 : <input name=img2><br>
			IMG3 : <input name=img3><br>
			IMG4 : <input name=img4><br>
			<input type=submit>
		</fieldset>
	</form>
</body>
</html>
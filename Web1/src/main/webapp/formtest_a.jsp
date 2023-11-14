<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 입력 폼</title>
</head>
<body>

	<form action = "formtest_b.jsp">
		이름 : <input type = "text" name = "userName"><br>
		나이 : <input type = "text" name = "age"><br>
		취미 선택 <br>
		<input type = "checkbox" name = "hobby" value = "운동">운동
		<input type = "checkbox" name = "hobby" value = "독서">독서
		<input type = "checkbox" name = "hobby" value = "요리">요리 <br><br>
		<input type = "submit" value = "프로필 전송">

	</form>

</body>
</html>
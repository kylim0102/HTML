<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="write_proc.jsp" onSubmit = "return Checkform()">
<table border=1; width="800"; align = "center">
	<tr align="center">
	<tr>
		<th width="100">이름</th>
		<td><input type="text" name="username"></td>
	</tr>
	<tr>
		<th width="100">나이</th>
		<td><input type="text" name="age"></td>
	</tr>
	<tr>
		<th width="100">아이디</th>
		<td><input type="text" name="userid"></td>
	</tr>
	<tr>
		<th width="100">비밀번호</th>
		<td><input type="password" name="pwd"></td>
	</tr>
	<tr>
		<th width="100">성별</th>
		<td><input type="radio" name="gender" value="M">남자 <input
			type="radio" name="gender" value="F">여자
	</tr>
	<tr>
		<th width="100">취미</th>
		<td><input type="checkbox" name="hobby" value="Basketball">농구
			<input type="checkbox" name="hobby" value="Soccer">축구
			<input type="checkbox" name="hobby" value="Volleyball">배구</td>
	</tr>
	<tr>
		<th width="100">영어등급</th>
		<td><select name="grade">
				<option value="A">A등급 100~90</option>
				<option value="B">B등급 89~80</option>
				<option value="C">C등급 79~70</option>
				<option value="D">D등급 69~60</option>
				<option value="E">E등급 59~</option>
		</select></td>
	</tr>
	<tr>
		<th width="100">자기소개</th>
		<td><textarea name="intro" cols="50" rows="30" name="Intro"></textarea></td>
	</tr>

	</table>
	<table width="800" align="center">
			<td align="right"> <input type="submit" value = "입력">
			|<a href="view.jsp">뒤로</a>|</td>
	</table>
	</form>
		</tr>
	</body>
	</html>
	<script>
	function checkform(){
		if 
	}
	</script>
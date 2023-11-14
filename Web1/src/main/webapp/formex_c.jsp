<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>form 전송 데이터 </h2>
	<form method="post" action="formex_d.jsp">
	
		1. 텍스트 : <input type="text" name="data1"><hr>
		2. 패스워드 : <input type="password" name="data2"><hr>
		3. 라디오 : <input type="radio" name="data3" value="1"> 1 &emsp; 
					<input type="radio" name="data3" value="2"> 2 &emsp;
					<input type="radio" name="data3" value="3"> 3 &emsp;<hr>
		4. 셀렉트 : <select name="data4">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select><hr>
		5. 체크박스 : <input type="checkbox" name="data5" value="1"> 1 &emsp;
					  <input type="checkbox" name="data5" value="2"> 2 &emsp;
					  <input type="checkbox" name="data5" value="3"> 3 &emsp;<hr>
		6. 텍스트에어리어 : <textarea rows="5" cols="30" name="data6"></textarea><hr>
		7. 히든 : <input type="hidden" name="data7" value="브라우저에는 보이지 않습니다." name="data7"><hr>
		8. 이메일 : <input type="email" name="data8"><hr>
		9. 날짜 : <input type="date" name="data9"><hr>
		10.숫자 : <input type="number" name="data10"><hr>
		<input type="submit" value="전송">
	</form>

</body>
</html>
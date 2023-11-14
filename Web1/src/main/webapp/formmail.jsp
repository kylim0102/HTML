<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1 style="font-size: 40px; margin-bottom: 10px; text-align: center;">폼메일 테스트</h1>
    <table border="0" align="center">
        <tr>
            <td align="center" style="background-color: #7481AB; color: white;">이름</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td align="center" style="background-color: #7481AB; color: white;">성별</td>
            <td>
                <input type="radio" name="gender" value="m" id="man">
                <label for="man">남자</label>
                <input type="radio" name="gender" value="f" id="woman">
                <label for="woman">여자</label>
            </td>
        </tr>
        <tr>
            <td align="center" style="background-color: #7481AB; color: white;">직업</td>
            <td>
                <select name="직업">
                    <option value="">-- 선택 --</option>
                    <option value="1">직장인</option>
                    <option value="2">학생</option>
                    <option value="3">교사</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="center" style="background-color: #7481AB; color: white;">이메일</td>
            <td><input type="text" name="이메일"></td>
        </tr>
        <tr>
            <td align="center" style="background-color: #7481AB; color: white;">제목</td>
            <td><input type="text" name="제목" style="width: 300px;"></td>
        </tr>
        <tr>
            <td align="center" style="background-color: #7481AB; color: white;">추가 내용</td>
            <td><textarea cols="50" rows="10" name="추가 내용"></textarea></td>
        </tr>
    </table>
</body>
</html>
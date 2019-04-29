<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardParamForm</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%
String path = request.getContextPath();
%>
<form action="<%=path%>/ch03_servlet/forward.do" method="post">
이름 : <input name="name"><br>
색상 : <select name="color">
		<option value="blue">파랑</option>
		<option value="green">쵸록</option>
		<option value="rde">빨강</option>
	  </select><br>
취미 : <input type="checkbox" name="hobby" value="낚시">낚시
	  <input type="checkbox" name="hobby" value="등산">등산
	  <input type="checkbox" name="hobby" value="운동">운동
	  <input type="checkbox" name="hobby" value="독서">독서<br>
좋아하는 요리 : <input type="text" name="dish">
<br>
<input type="submit" value="전송">
</form>

</body>
</html>
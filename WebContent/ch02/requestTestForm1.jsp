<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestTestForm1</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%
String context = request.getContextPath();
%>

<form action="<%=context%>/ch02_servlet/request.do" method="post">
이름 :&nbsp;&nbsp;<input type="text" name="name"><br><br>
나이 :&nbsp;&nbsp;<input type="number" name="age"><br><br>
성별 :&nbsp;&nbsp;<input type="radio" name="gender" value="m" checked="checked">남&nbsp;
				<input type="radio" name="gender" value="f">여<br><br>
취미&nbsp;&nbsp;	<select name="hobby">
					<option value="운동" selected="selected">운동</option>
					<option value="요리">요리</option>
					<option value="낚시">낚시</option>
					<option value="등산">등산</option>
				</select><br><br>
<input type="submit">
</form>


</body>
</html>
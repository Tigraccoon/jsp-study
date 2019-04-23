<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>whileTestForm</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<form action="/jsp01/ch01_servlet/while.do" method="post">
	곱해질 값 :&nbsp;&nbsp;<input name="number" type="number"><br>
	곱해질 횟수 :&nbsp;&nbsp;<input name="num" type="number"><br>
<input type="submit" value="확인">

</form>

</body>
</html>
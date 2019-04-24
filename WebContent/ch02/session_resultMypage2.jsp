<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_resultMypage2</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<h1>Transport2</h1>
ID :&nbsp;&nbsp;<%=session.getAttribute("id") %><br><br>
이름 :&nbsp;&nbsp;<%=session.getAttribute("name") %><br><br>
E-mail :&nbsp;&nbsp;<%=session.getAttribute("email") %><br><br>
HP :&nbsp;&nbsp;<%=session.getAttribute("hp") %><br><br>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_3</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
out.println("<h1>" + session.getAttribute("message") + "</h1>");
%>

</body>
</html>
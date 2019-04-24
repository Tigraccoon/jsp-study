<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_2</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
out.println("<h1>" + session.getAttribute("message") + "</h1>");
%>
<br>
<a href="session_3.jsp">다음?</a>
</body>
</html>
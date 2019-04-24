<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_1</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%
String message ="안녕하세요?";
session.setAttribute("message", message);

RequestDispatcher rd = request.getRequestDispatcher("session_2.jsp");
rd.forward(request, response);
%>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
int a = Integer.parseInt(request.getParameter("num"));
%>

a : <%=a %>



</body>
</html>
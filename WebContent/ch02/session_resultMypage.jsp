<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_resultMypage</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
String context = request.getContextPath();
%>
<h1>Transport1</h1>
ID :&nbsp;&nbsp;<%=session.getAttribute("id") %><br><br>
이름 :&nbsp;&nbsp;<%=session.getAttribute("name") %><br><br>
E-mail :&nbsp;&nbsp;<%=session.getAttribute("email") %><br><br>
HP :&nbsp;&nbsp;<%=session.getAttribute("hp") %><br><br>
<a href="<%=context %>/ch02/session_resultMypage2.jsp">Transport2</a>
</body>
</html>
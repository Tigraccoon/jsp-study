<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application_result</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%
String message = (String)application.getAttribute("message");
out.println("메세지 : " + message);


%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardTo</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<h2>forwardTo.jsp 페이지</h2>
id : <%=request.getAttribute("id")  %><br>
name : <%=request.getAttribute("name") %>
</body>
</html>
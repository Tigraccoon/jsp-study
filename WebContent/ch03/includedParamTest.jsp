<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>includedParamTest</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<hr>
<h2>저는 포함되는 페이지인 : <%=request.getParameter("pageName2") %> 입니다~</h2>
<h3><%=request.getParameter("name2") %></h3>

</body>
</html>
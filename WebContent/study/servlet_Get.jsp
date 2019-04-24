<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>servlet_Get</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
HashMap<String,Object> map = (HashMap<String,Object>)request.getAttribute("map");
%>

이름 : <%=map.get("name") %><br><br>
나이 : <%=map.get("age") %><br><br>
성별 : <%=map.get("gender") %><br><br>
취미 : <%=map.get("hobby") %><br><br>

</body>
</html>
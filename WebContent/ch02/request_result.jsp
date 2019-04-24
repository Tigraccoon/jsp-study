<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request_result</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%
Map<String, Object> map = (Map<String,Object>)request.getAttribute("map");
%>

이름 :&nbsp;&nbsp;<%=map.get("name") %><br><br>
나이 :&nbsp;&nbsp;<%=map.get("age") %><br><br>
성별 :&nbsp;&nbsp;<%=map.get("gender") %><br><br>
취미 :&nbsp;&nbsp;<%=map.get("hobby") %><br><br>

</body>
</html>
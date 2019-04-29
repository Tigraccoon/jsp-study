<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>color</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%
Map<String,Object> map = (Map<String,Object>)request.getAttribute("map");
String name = (String)map.get("name");
String color= (String)map.get("color");
String message = (String)map.get("message");
String[] hobby = (String[])map.get("hobby");
String dish = (String)map.get("dish");
%>

<%=name%>이 좋아하는 색상은
<span style="color: <%=color%>"><%=color %></span>이고, 
<%=message %>
<br>
취미는 
<%
for(String str : hobby){
	out.println(str + " ");
}
%>
 이다.<br>
좋아하는 요리는 <%=dish%> 입니다~
</body>
</html>
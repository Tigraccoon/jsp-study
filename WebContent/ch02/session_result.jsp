<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_result</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%
String name = (String)session.getAttribute("name");
int age = (int)session.getAttribute("age");
%>
<h2>Session</h2>
이름 : <%=name %><br>
나이 : <%=age %><br>
세션 아이디 : <%=session.getId() %><br>
<hr>
<h2>Request</h2>
<%
String name2 = (String)request.getAttribute("name");
int age2 = (int)request.getAttribute("age");
%>
이름 : <%=name2 %><br>
나이 : <%=age2 %><br>
<br>
<a href="session_result2.jsp">페이지 변경시 Session과 Request를 비교</a>

</body>
</html>
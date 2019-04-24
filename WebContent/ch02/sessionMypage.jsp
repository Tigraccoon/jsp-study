<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionMypage</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
String context = request.getContextPath();
%>

<h2>Session Data Transportation</h2>
<form action="<%=context%>/ch02_servlet/session_Mypage.do" method="post" style="border: 1px solid black; padding: 100px; widows: 700px;">
ID :&nbsp;&nbsp;<input name="id" type="text" placeholder="hong"><br><br>
이름 :&nbsp;&nbsp;<input name="name" type="text" placeholder="홍길동"><br><br>
E-Mail :&nbsp;&nbsp;<input name="email" type="email" placeholder="abc@aaa.com"><br><br>
HP :&nbsp;&nbsp;<input name="hp" type="tel" placeholder="000-0000-0000"><br><br>
<input type="submit" value="전송!"><br>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Date nowDate = new Date();//날짜 객체

out.println(nowDate + "<br>");//웹브라우져에 출력
System.out.println(nowDate + "\t");	//콘솔에 출력

SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일 a HH:mm:ss");

String formatDate = dateFormat.format(nowDate);
%>
<br>
<h1>
<!-- 표현식(expression) -->
날짜는 <%=formatDate %> <br>

<!-- 정식 출력문 -->
날짜는 <%out.println(formatDate); %> <br>
</h1>
</body>
</html>
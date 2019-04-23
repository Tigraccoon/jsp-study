<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="config.Constants" %>
<%@ include file="color.jspf"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

body{
	background-color: <%=blackColor%>;
	color: <%=whiteColor%>;
	font-size: 50px;
	text-align: center;
}

</style>

</head>
<body>


<%
String name = "홍길동";
%>
<%!
public String hongHp(){
	return "123-123-1234";
}
%>

<h1>이름 :&nbsp;<%=name %> </h1>
<h1>나이 :&nbsp;<%=Constants.AGE %></h1>
<h1>HP :&nbsp;<%=hongHp() %></h1>
</body>
</html>
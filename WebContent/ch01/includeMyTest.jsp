<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="config.Constants" %>
<%@ include file="color.jspf" %>
<%@ include file="test01.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

body {
	background-color: <%=bodyback_c%>
}

h2{
	background-color: <%=value_c %>
}

</style>
</head>
<body>
<%String hp ="010-111-1234"; %>
<%!
public int returnAge(){
	int hongage = 33;
	return hongage;
}

%>

<h2>이름 : <%=name %></h2>
<h2>나이 : <%=returnAge() %></h2>
<h2>이메일 : <%=Constants.EMAIL %></h2>
<h2>hp : <%=hp %></h2>
</body>
</html>
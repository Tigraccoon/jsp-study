<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>responseRedirected</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<h2>이동된 페이지</h2>

<!-- 웹은 기본적으로 비연결성으로 인해 페이지가 바뀌면 연결이 끊어지면서 값이 안 넘어온다.
이를 해결하기 위해 form태그, session, cookie 등의 방법으로 해결한다. -->

<%
//get방식으로 전달, String으로 처리

String name = request.getParameter("name");
String age = request.getParameter("age");

out.println("이름 : " + name + ", 나이 : " + age);

%>

<hr>
이름 : <%=request.getParameter("name") %>
나이 : <%=request.getParameter("age") %>
<hr>
<h3>EL</h3>
이름 : ${param.name}<br>
나이 : ${param.age}<br>

</body>
</html>
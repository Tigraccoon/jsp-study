<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_result2</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<h2>Session</h2>
이름 : <%=session.getAttribute("name") %><br>
나이 : <%=session.getAttribute("age") %><br>
세션 아이디 : <%=session.getId() %><br>
<hr>
<h2>Request</h2>
이름 : <%=request.getAttribute("name") %><br>
나이 : <%=request.getAttribute("age") %><br>

<!-- session객체를 쓰면 데이터가 전달될 때 서버가 session아이디를 참조를 해서 데이터를 유지시켜주고,
request객체는 요청 + 응답, 단 2페이지만 데이터를 유지시켜주는 특징이 있음. 
request객체는 forward()를 써야 데이터가 전달이 가능하다. -->

</body>
</html>
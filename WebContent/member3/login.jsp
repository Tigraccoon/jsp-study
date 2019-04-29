<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login?</title>
<style type="text/css">
body{
	background: gray;
}

form{
	boder: 10px solid #4B8FFF;
	background: white;
	width: 300px;
	height: 150px;
	text-align: center;
	margin: auto;
	border-radius: 30px;
	padding: 50px;
}
</style>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%String context = request.getContextPath(); %>

<form action="<%=context%>/Member3_Servlet/login.do" method="post">
아이디 :&nbsp;&nbsp;<input type="text" name="userid"><br><br>
비밀번호 :&nbsp;&nbsp;<input type="password" name="pwd"><br><br>
<input type="submit" value="로그인"><br>
<%
String message = (String)session.getAttribute("message");
if(message!=null){
%>
<br>
<span style="color: red;"><%=message%></span>
<%} else {out.println("<span style='color:red;'>로그인 하세요!</span>");}%>
</form>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member3.Member3DTO" %>
<%@ include file="loginCheck.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_succeed</title>
<style type="text/css">
body{
	text-align: center;
}
</style>
<script src="../include/jquery-3.3.1.min.js"></script>
<%String context = request.getContextPath(); %>

<script type="text/javascript">

$(function(){
	$("#btnLogout").click(function(){
		location.href="<%=context%>/Member3_Servlet/logout.do";
	});
});


</script>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
String message = (String)session.getAttribute("message");
Member3DTO userInfo = (Member3DTO)session.getAttribute(userid);
%>
<%=message%> 
<h3><b><%=userInfo.getName() %></b> 환영해!</h3>
<br>
<p>아이디 : <%=userInfo.getUserid() %></p><br>
<p>이름 : <%=userInfo.getName() %></p><br>
<p>이메일 : <%=userInfo.getEmail() %></p><br>
<p>전화번호 : <%=userInfo.getHp() %></p><br>
<br>
<button id="btnLogout">로그아웃?</button>

</body>
</html>
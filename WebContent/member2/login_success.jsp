<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member2.Member2DTO" %>
<%@ include file="login_Check.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_success</title>
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
		location.href="<%=context%>/Member2_Servlet/logout.do";
	});
	
});

</script>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
Member2DTO dto = (Member2DTO)session.getAttribute(userid);
String message = (String)session.getAttribute("message");
%>
<%=message %>

<h1><b><%=dto.getName()%></b> 님 로그인에 성공하셨어요~</h1>


<button type="button" id="btnLogout">로그아웃!</button>


</body>
</html>
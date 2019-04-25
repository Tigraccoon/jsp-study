<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/session_Check.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_success</title>
<script src="../include/jquery-3.3.1.min.js"></script>
<%String context = request.getContextPath(); %>
<script type="text/javascript">

$(function(){
	$("#btnLogout").click(function(){
		location.href="<%=context%>/ch02_servlet/logout.do";
	});
	
});

</script>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<h2><%=session.getAttribute("message") %></h2>
접속중인 아이디 : <%=session.getAttribute("userid") %><br><br>
<button type="button" id="btnLogout">로그아웃!</button>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>part_Temblate</title>
<style type="text/css">
body{
	text-align: center;
}

jsp:include {
	border: 1px solid black;
	display: block;
	width: 500px;
	height: 300px;
}

</style>

</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%String context = request.getContextPath(); 
String name = request.getParameter("name");
%>
이름 : <%=name %>

<form action="<%=context%>/Part_Servlet/doit.do" method="post">
	<jsp:include page="part_Sub1.jsp"></jsp:include>
</form>

<jsp:include page="part_Sub2.jsp"></jsp:include>
</body>
</html>
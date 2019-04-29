<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>part_Main</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>


<jsp:forward page="part_Template.jsp">
	<jsp:param value="김철수" name="name"/>
</jsp:forward>

</body>
</html>
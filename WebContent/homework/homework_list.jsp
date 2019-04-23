<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="homework.HomeworkDTO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework_list</title>
<style type="text/css">

body{
	background: #cccccc;
}
table{
	background : white;
	border-collapse: collapse;
	border-spacing: 0;
	border: 2px solid black;
	margin: auto;
}
th, td{
	padding: 10px;
	text-align: center;
	vertical-align: middle;
	border: 0.3px solid black;
}
th{
	background: #8BB7FF;
}

</style>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%
ArrayList<HomeworkDTO> list = (ArrayList<HomeworkDTO>) request.getAttribute("homework_list");
%>

<table>
	<tr>
		<th>ID</th>
		<th>이름</th>
		<th>이메일</th>
		<th>HP</th>
		<th>가입일자</th>
	</tr>	

<%
	for(HomeworkDTO dto : list){
		out.println("<tr>");
		out.println("<td>" + dto.getId() + "</td>");
		out.println("<td>" + dto.getName() + "</td>");
		out.println("<td>" + dto.getEmail() + "</td>");
		out.println("<td>" + dto.getHp() + "</td>");
		out.println("<td>" + dto.getIn_date() + "</td>");
		out.println("</tr>");
	}
%>



</table>


</body>
</html>
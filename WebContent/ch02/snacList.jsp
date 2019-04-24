<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="snac.SnacDAO" %>
<%@ page import="snac.SnacDTO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>snacList</title>
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
SnacDAO dao = new SnacDAO();
ArrayList<SnacDTO> items = dao.getList();
%>
<table>
	<tr>
		<th>과자명</th>
		<th>회사</th>
		<th>가격</th>
		<th>수량</th>
	<tr>
<%
for(SnacDTO dto : items){
	
	out.println("<tr>");
	out.println("<td>" + dto.getSnak() +"</td>");
	out.println("<td>" + dto.getCo() +"</td>");
	out.println("<td>" + dto.getPrice() +"</td>");
	out.println("<td>" + dto.getAmo() +"</td>");
	out.println("</tr>");
}

%>

</table>

</body>
</html>
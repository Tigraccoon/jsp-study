<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="memo.MemoDTO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memo_list</title>
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
List<MemoDTO> items = (List<MemoDTO>)request.getAttribute("list");
%>
<table>
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>메모</th>
		<th>날짜</th>
	</tr>
	<%
		for(MemoDTO dto : items){
			out.println("<tr>");
			out.println("<th>" + dto.getIdx() + "</th>");
			out.println("<th>" + dto.getWriter() + "</th>");
			out.println("<td>" + dto.getMemo() + "</td>");
			out.println("<td>" + dto.getPost_date() + "</td>");
			out.println("</tr>");
		}
	%>
</table>


</body>
</html>
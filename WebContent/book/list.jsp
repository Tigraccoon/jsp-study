<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="book.*" %>
<%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book_list</title>
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

<%

BookDAO dao = new BookDAO();
ArrayList<BookDTO> items = dao.bookList();

%>

<table>
	<tr>
		<th>아이디</th>
		<th>제목</th>
		<th>저자</th>
		<th>가격</th>
		<th>수량</th>
	</tr>
<%


for(BookDTO dto : items){
	out.println("<tr>");
	out.println("<td>" + dto.getId() + "</td>");
	out.println("<td>" + dto.getTitle() + "</td>");
	out.println("<td>" + dto.getAuthor() + "</td>");
	out.println("<td>" + dto.getPrice() + "</td>");
	out.println("<td>" + dto.getQty() + "</td>");
	out.println("</tr>");
}
 %>
 
 </table>
</body>
</html>
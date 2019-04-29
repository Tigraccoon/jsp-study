<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500code</title>
<style type="text/css">

body{
	text-align: center;
}
#btnBack:hover {
	background-color: white;
	color: #4B8FFF;
}
#btnBack{
	padding: 30px 50px; 
	border-radius: 20px; 
	background-color: #4B8FFF; 
	color: white;
	font-size: 30px;
	font-weight: bold;
}

</style>

</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<br><br><br><br><br><br><br>
<img src="500error.jpg">
<br><br>
<button id="btnBack" onclick="history.back();">뒤로가기</button>
</body>
</html>
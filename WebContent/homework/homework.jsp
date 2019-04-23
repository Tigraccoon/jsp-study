
<!-- http://192.168.0.235:8940/jsp01/homework/homework.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(function(){
	listload();
});
function listload(){
	$.ajax({
		type : "post",
		url : "/jsp01/homework_servlet/home_list.do",
		success : function(result){
			$("#outfield").html(result);
		}
	});
};


</script>

<style type="text/css">
body{
	text-align: center;
}

</style>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<h1>회원 리스트 출력</h1><br>
<!-- <form action="addList.jsp" method="post">
<input type="submit" value="회원 추가" style="background: #8BB7FF; padding: 10px 30px 10px 30px; ">
</form>
<br>
<button onclick="listload()">새로고침</button>
<br><br>
 -->
<div id="outfield"></div>


</body>
</html>
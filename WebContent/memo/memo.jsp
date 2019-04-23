<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memo</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(function(){	//페이지 로딩시 실행
	$.ajax({
		type : "get",
		url : "/jsp01/memo_servlet/memo_list.do",
		success : function(result){	//콜백함수, 결과 텍스트를 #div1에 출력
			$("#div1").html(result);
		}
	});
});

</script>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<h2>한줄 메모장</h2>
<!-- 메모 출력 영역 -->
<div id="div1"></div>


</body>
</html>
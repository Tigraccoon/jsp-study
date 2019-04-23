<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>while_result</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%

//setAttribute("변수명", 변수(Object type) : 보냄
//getAttribute("변수명") : 받음 Object로 보내기 때문에 받을 때 형변환을 해줘야..


int result = (int)request.getAttribute("result");
out.println("결과 : " + result);

%>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request_result</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
Map<String, Object> map = (Map<String,Object>)request.getAttribute("map");
%>
<!-- EL(Expression Language) : java코드를 줄일 수 있는 기법? -->
<!-- $(멥.변수) 이때의 $는 jquery가 아니고 자바 코드의 일종 -->

이름 :&nbsp;&nbsp;${map.name}<br><br>
나이 :&nbsp;&nbsp;${map.age}<br><br>
성별 :&nbsp;&nbsp;${map.gender}<br><br>
취미 :&nbsp;&nbsp;${map.hobby}<br><br>




</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%=getServletInfo() %><br>

<!-- 개발 경로가 아닌 서비스 경로(배포 경로) -->
<%=application.getRealPath("/") %>
<!-- jsp가 변환된 java파일을 보면 jsp와 반대로 자바코드에 html이 이식되어짐.
실제로는 웹서버에 의해 jsp가 이처럼 java코드로 변환되어 실행됌.
가끔 변환하는 과정에서 에러가 발생하므로 서버 clean을 해줘야.. 
3clean : project, server, server work directory -->

</body>
</html>
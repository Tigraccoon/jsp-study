<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- 페이지 지시어 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
</head>
<body>

<%	//jsp code(Scriptlet)
//jsp program
// model 1 : 페이지 위주
// model 2 : java class 위주(servelet) 
// MVC pattern(model 2) : Model View Controller
String str = "hello java?";
out.println("<h1>" + str + "</h1><br>");	//웹브라우져에 문자열이 html로 출력

//applicationb 내장객체(서버의 정보를 처리)
//jsp의 실제 서비스 경로
out.println(application.getRealPath("/"));


%>

</body>
</html>
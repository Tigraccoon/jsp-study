<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_result</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%
// *JSP내장객체의 범위
//pageContext(현재 페이지) < request(요청+응답) < session(사용자 단위) < application(서버단위)

//session영역에 변수값을 저장
//setAttribute("키"(String), 값(object));
session.setAttribute("name", "김철수");
session.setAttribute("age", 20);
//reqeust영역에 변수값을 저장
request.setAttribute("name", "김철수");
request.setAttribute("age", 20);

RequestDispatcher rd = request.getRequestDispatcher("session_result.jsp");
rd.forward(request, response);
%>



</body>
</html>
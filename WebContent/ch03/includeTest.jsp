<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>includeTest</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%
//pageName에는 includedTest.jsp가 들어옴
String pageName = request.getParameter("pageName");
%>
포함하는 페이지 : <%=pageName%><br>

<!-- jsp:include는 변수 공유가 안 되며 -->
<jsp:include page="<%=pageName %>"></jsp:include>

<!-- @ include file은 변수 공유가 된다! -->
<%@ include file="includedTest.jsp" %><br>
메세지 : <%=message %>
</body>
</html>
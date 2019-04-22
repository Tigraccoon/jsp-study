<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="config.Constants" %>
<%@ include file="color.jspf" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>includeDirective</title>

<style>

body{
	background-color : <%=bodyback_c%>;
}

</style>

</head>
<body>
<!-- static은 instance를 생성 안 해도.. -->
<h2>최대값 : <%=Constants.MAX %></h2>

<jsp:include page="test01.jsp"></jsp:include>
<%-- <%=str %> --%>
<!-- jsp액션태그는 java변수 공유 안 됌 --> 

<%@ include file="test01.jsp" %>
<%=str %>

<!-- page 모듈화를 위해서 파일 include 방식이 2개가 있음. -->
<!-- jsp액션태그 방식과 include file 지시어 방식
 액션태그는 파일 공유가 안 되고 지시어 방식은 가능 -->

</body>
</html>
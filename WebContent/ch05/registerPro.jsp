<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="registerBean" class="ch05.RegisterBean">
	<jsp:setProperty name="registerBean" property="*"/>
</jsp:useBean>

<%@ page import="java.sql.Timestamp" %>
<%
/* 시스템 시간을 ms 단위로 출력 */
out.println(System.currentTimeMillis());
registerBean.setReg_data(new Timestamp(System.currentTimeMillis()));
%>
<br><br>
아이디 : <jsp:getProperty property="id" name="registerBean"/><br><br>
비밀번호 : <jsp:getProperty property="passwd" name="registerBean"/><br><br>
이름 : <jsp:getProperty property="name" name="registerBean"/><br><br>
가입일자 : <jsp:getProperty property="reg_data" name="registerBean"/><br><br>

</body>
</html>
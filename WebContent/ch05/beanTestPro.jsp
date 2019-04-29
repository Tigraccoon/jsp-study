<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanTestPro</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
System.out.println(request.getParameter("name"));
%>
<%-- <%@page import="ch05.TestBean" %>
<%
//TestBean.java에 값을 저장하려면?
TestBean bean = new TestBean();
bean.setId(request.getParameter("id"));
bean.setPwd(request.getParameter("pwd"));
bean.setName(request.getParameter("name"));
%> --%>

<jsp:useBean id="testBean" class="ch05.TestBean">
	<jsp:setProperty name="testBean" property = "*" />
</jsp:useBean>
<!-- getter가 호출 -->
<!-- id="참조변수명" class="클래스 이름"
id가 testBean인 클래스의 인스턴스가 생성되고 모든 property(*) 즉 setter에 값이 입력.
단, 태그의 property 값과 클래스의 변수명이 일치해야..  -->
아이디 : <jsp:getProperty property="id" name="testBean"/> <br>
비밀번호 : <jsp:getProperty property="pwd" name="testBean"/> <br>
이름 : <jsp:getProperty property="name" name="testBean"/> <br>
</body>
</html>
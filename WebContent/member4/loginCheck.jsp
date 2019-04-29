<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
String id = (String)session.getAttribute("id");
if (id == null){
	request.setAttribute("message", "잘못된 접근이네요.. 로그인을 먼저 하세요!!");
	RequestDispatcher rd = request.getRequestDispatcher("/member4/login.jsp");
	rd.forward(request, response);
}
%>

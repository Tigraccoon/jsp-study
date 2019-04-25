<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");
String userid = (String)session.getAttribute("userid");
if(userid == null){
	session.setAttribute("message", "잘못된 접근입니다.. \n로그인을 먼저 하세요!");
	RequestDispatcher rd = request.getRequestDispatcher("/member2/login.jsp");
	rd.forward(request, response);
}


%>

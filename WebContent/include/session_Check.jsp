<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>

<%

String userid=(String)session.getAttribute("userid");
if(userid == null){
	String message ="먼저 로그인하세요..";
	message = URLEncoder.encode(message, "utf-8");
	response.sendRedirect("sessionTestForm.jsp?message="+message);
} 


%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestTest2</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<h2>request 객체의 method</h2>

<%
//URL과 URI의 차이
//uri : /jsp01/ch02/requestTest2.jsp
//url : http://192.168.0.235/jsp01/ch02/requestTest2.jsp
String[] names = {"프로토콜", "서버", "method", "context", "uri", "url", "ip"};

String[] values = {request.getProtocol(), request.getServerName(), request.getMethod(), request.getContextPath(),
		request.getRequestURI(), request.getRequestURL().toString(), request.getRemoteAddr()};

for(int i=0 ; i < names.length ; i++){
	out.println(names[i] + " : " + values[i] + "<br>");
}


Enumeration<String> en = request.getHeaderNames();
String headerName = "";
String headerValue = "";
out.println("<h2>해더정보</h2>");
while(en.hasMoreElements()){	//다음 요소가 있으면?
	headerName = en.nextElement();
	headerValue = request.getHeader(headerName);
	out.println(headerName + " : " + headerValue + "<br>");
}

%>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>applicationTest</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<%

//웹이 제공하는 4가지 저장 영역
//pageContext(현재 페이지)
//request(요청, 응답 페이지)
//session(사용자 단위)
//application(서버 단위)

String info = application.getServerInfo();
application.log("WAS 정보 : " + info);	//콘솔에 출력(붉은색, 서버 로그에서 출력)
System.out.println("WAS 정보 : " + info);//콘솔에 출력(검정색)

//개발 디렉토리가 아닌 서비스 디렉토리 경로(배포경로)
String path = application.getRealPath("/");
application.log("서비스 경로 : " + path);	
//로그 출력은 개발할 땐 사용해도 서버에 부하를 주기 때문에 개발 후에는 지우는게..로깅 툴이 별도로 존제함.
System.out.println("서비스 경로 : " + path);

application.setAttribute("message", "hello?");

%>

<a href="application_result.jsp">서버 변수 확인</a>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declarationTest</title>
</head>
<body>

<%	//스크립틀릿
String str1 = "java";

%>

<%!	//jsp 선언부(인스턴스 변수, mathod 선언 가능).. !를 꼭 붙여야 한다. 하지만 잘 안 쓴다고...
String str2 = "hello";
public String getStr2(){
	return str2+" method";
}

%>

<%=str1 %><br>
<%=str2 %><br>
<h4>method</h4>
<%=getStr2() %>

</body>
</html>
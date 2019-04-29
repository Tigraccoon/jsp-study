<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>includeTestForm</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<form action="includeTest.jsp" method="post">
이름 : <input name="name"><br>
포함할 페이지 : <input name="pageName" value="includedTest.jsp"><br>
<input type="submit" value="전송">

</form>

</body>
</html>
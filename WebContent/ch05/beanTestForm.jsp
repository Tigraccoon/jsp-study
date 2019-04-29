<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanTestForm</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<form action="beanTestPro.jsp" method="post">
아이디 :&nbsp;&nbsp;<input type="text" name="id"> <br>
비밀번호 :&nbsp;&nbsp;<input type="text" name="pwd"><br> 
이름 : &nbsp;&nbsp;<input type="text" name="name"><br>
<input type="submit" value="전송">
</form>

</body>
</html>
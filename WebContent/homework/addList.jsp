<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="homework.HomeworkDAO" %>
<%@ page import="homework.HomeworkDTO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addList</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
function check(){
	var id = document.getElementById("id").value;
	var name = document.getElementById("name").value;
	var email = document.getElementById("email").value;
	var hp = document.getElementById("hp").value;
	
	if(id==""){	
		alert("아이디를 입력해주세요!");
		document.getElementById("id").focus();	
		return;		
	}
	if(name==""){	
		alert("이름을 입력해주세요!");
		document.getElementById("name").focus();	
		return;		
	}
	if(hp==""){
		alert("전화번호를 입력해주세요!");
		document.getElementById("hp").focus();
		return;
	}
	if(email==""){
		alert("이메일을 입력해주세요!");
		document.getElementById("email").focus();
		return;
	}
	
	if (confirm("등록하시겠습니까?") == true){
		listupdate();	
	} else{
		alert("취소하셨습니다.");
	}
}

function listupdate(){
	var iddata = document.getElementById("id").value;
	var namedata = document.getElementById("name").value;
	var emaildata = document.getElementById("email").value;
	var hpdata = document.getElementById("hp").value;
	<%
	String id = request.getParameter("id");
	System.out.println(id);
	String name = request.getParameter("name");
	System.out.println(name);
	String email = request.getParameter("email");
	System.out.println(email);
	String hp = request.getParameter("hp");
	HomeworkDTO dto = new HomeworkDTO(id, name, email, hp);
	%>
	$.ajax({
		type : "put",
		url : "/jsp01/homework_servlet/home_list.do",
		success : function(){
			alert("등록되었습니다.");
			location.href="homework.jsp";
		}
	});
};

</script>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<div>
<form action="listupdate()" method="post" id="form">
	아이디 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="text" size="30" name="id" id="id" value="hong"><br><br>
	이름 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="text" size="30" name="name" id="name" value="홍길동"><br><br>
	이메일주소 :&nbsp;&nbsp;
	<input type="email" size="30" name="email" id="email" value="hong@naver.com"><br><br>
	전화번호 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="tel" size="30" name="hp" id="hp" value="010-0000-0000"><br><br>
	
	<input type="button" value="가입하기" id="button" onclick="check()"><br>
</form>
</div>

</body>
</html>
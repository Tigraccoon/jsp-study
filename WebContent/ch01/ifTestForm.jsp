<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ifTestForm</title>
</head>
<body>

<form action="ifTest.jsp" method="post" name="form1">

<!-- Definition List -->
<!-- Definition Title -->
<!-- Definition Description -->

<dl>
	<dd>이름 :&nbsp;&nbsp;<input name="name"></dd>
	<dd>색상 :&nbsp;&nbsp;
		<select name="color">
			<option value="blue">파랑</option>
			<option value="green">쵸록</option>
			<option value="red">빨강</option>
		</select>
	</dd>
	<dd>
		<input type="range" name="range" min="1" max="100" onchange="document.form1.rangeout.value=this.value">
		<output name="rangeout" for="range">5</output>
	</dd>
	<dd>
		<input type="submit" value="확인">
	</dd>	
</dl>

</form>


</body>
</html>
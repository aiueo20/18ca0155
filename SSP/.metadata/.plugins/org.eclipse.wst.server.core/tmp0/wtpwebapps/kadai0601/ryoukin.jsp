<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kadai0601.Calculate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body onload="button_off()">
<script type="text/javascript">
var button;
function button_off(){
	button = document.getElementById('button');
	button.disabled = 'disabled';
}

function button_on(){
	button = document.getElementById('button');
	button.disabled = false;
}

</script>


<h1>手紙の料金計算</h1><br>

<form action="/kadai0601/Ryoukin" method="get">
<input type="radio" name="teikei" value="定形" onClick="button_off()" checked>定形<br>
<input type="radio" name="teikei" value="定形外" onClick="button_on()">定形外<br>

<div id="button">
<input type="radio" name="kikakunaigai" value="規格内" checked>規格内<br>
<input type="radio" name="kikakunaigai" value="規格外">規格外<br>
</div>

<input type="checkbox" name="sokutatu" value="速達">速達<br>
<input type="checkbox" name="kannikakitome" value="簡易書留">簡易書留<br>

枚数<input type="text" name="maisu" value=""><br>
<input type="submit" value="計算"><br>
料金：<c:out value="${calculate.price }"/>
<br>
${calculate.msg }
</form>
</body>
</html>
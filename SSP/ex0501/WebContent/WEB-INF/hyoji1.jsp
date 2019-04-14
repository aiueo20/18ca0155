<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>hyoji1</title>
</head>
<body>
キーワード１：<%= request.getAttribute("kw") %>
<form action="/ex0501/hyoji2" method="get">
キーワード２：<input type="text" name="keyword" ><br>
<input type="submit" value="送信">
</form>
</body>
</html>
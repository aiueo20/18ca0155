<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hyoji3</title>
</head>
<body>
キーワード１：<%= session.getAttribute("kw") %><br>
キーワード２：<%= request.getAttribute("kw") %>
</body>
</html>
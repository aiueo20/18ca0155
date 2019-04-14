<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スタンダード保険</title>
</head>
<body>
<% String age = request.getParameter("age"); %>
年齢
<%=age %>
才、
<% String money = request.getParameter("money"); %>
年収
<%=money %>
万円、
<% String gender = request.getParameter("gender"); %>
<%=gender %>
のあなたにお勧め
<br>
<h1>スタンダード保険</h1>
<br>
死亡保障：5千万円<br>
入院保障：1日5千円<br>
手術保障：100万円<br>
<a href="index.html">戻る</a>
</body>
</html>
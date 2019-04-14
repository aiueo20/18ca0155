<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gameenq</title>
</head>
<body>
<h1>あなたの回答</h1>
好きなゲームは、
<%= request.getParameter("likegame") %>
です。<br>
性別は、
<%= request.getParameter("gender") %>
です。<br>
職業は、
<%= request.getParameter("job") %>
です。<br>

<% String[] hard = request.getParameterValues("hard"); %>
<%!int count = 1; %>
初めて購入したゲーム機は、
<% for(int i = 0;i < hard.length;i++){ %>
<% out.print(hard[i]); %>
<% 		if(count < hard.length){ %>
<% 			out.print("、"); %>
<%		} %>
<% count++; %>
<% } %>
です。
<p><a href="../kadai0402/frmGame.html">戻る</a></p>
</body>
</html>
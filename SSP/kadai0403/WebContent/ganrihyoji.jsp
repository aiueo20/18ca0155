<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ganri</title>
</head>
<body>
<h1>元利表示</h1>
貯金金額
<%! double save = 0; %>
<%! double rate = 0; %>
<%! double result = 0; %>
<%! double period = 0; %>
<%= request.getParameter("savings") %>
利息
<%= request.getParameter("rate") %>
貯金期間
<%= request.getParameter("period") + "年"%><br>

<%try{ %>
<% save = Double.parseDouble(request.getParameter("savings")); %>
<% rate = Double.parseDouble(request.getParameter("rate")); %>
<% period = Double.parseDouble(request.getParameter("period")); %>
<% result = save + save * (rate * 0.01) * period;%>
<%="元利合計" + result%>
<br>
<p><a href="../kadai0403/inputdata.html">戻る</a></p>
<%}catch(NumberFormatException e){ %>
<%="貯金金額と利息には数字を入力してください" %>
<br>
<p><a href="../kadai0403/inputdata.html">修正する</a></p>
<%} %>



</body>
</html>
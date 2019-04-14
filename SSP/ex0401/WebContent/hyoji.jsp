<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- pageディレクティブ(本ページ全体の設定) -->
	<!-- language:ソースコードの種別 -->
	<!-- contentTypeからpageEncoding:Servletのフィルターの設定と同じ -->
	<!-- 上記2行はJSPを選択すると自動的に付加される -->

<%@ page import="java.util.Calendar" %>
<%@ page import="java.time.LocalDateTime" %>
<!-- Javaのクラスのインポートのやり方（pageディレクティブに記述する） -->
<!-- セミコロンが無いなど、FQNの記述で""が必要など、記述方法に注意 -->
<!-- Servlet関連のインポートは不要(暗黙)。そのまま利用可 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hyoji</title>
</head>
<body>
<% Calendar c = Calendar.getInstance(); %>
<% LocalDateTime dt = LocalDateTime.now(); %>
<% if (request.getParameter("sentaku").equals("T")){ %>
	<p>現在の時刻</p>
	<% String now1 = c.get(Calendar.HOUR) + "時" + c.get(Calendar.MINUTE) + "分"; %>
	<%= now1 %>
	<% String now2 = dt.getHour() + "時" + dt.getMinute() + "分"; %>
	<!-- DateTimeクラス群の中のFormatterを使うと簡単に日付修飾が可能 -->
	<%= now2 %>
<% } else if (request.getParameter("sentaku").equals("D")){ %>
	<p>本日の日付</p>
	<!-- Calendarクラスを使た日付管理は初月が0月になっている（＝人間界の1月）である点に注意 -->
	<% String today1 = (c.get(Calendar.MONTH) + 1) + "月" + c.get(Calendar.DAY_OF_MONTH) + "日"; %>
	<%= today1 %>
	<% String today2 = dt.getMonthValue() + "月" + dt.getDayOfMonth() + "日"; %>
	<!-- dt.getMonth()だと12月ならDECEMBERが返ってくる -->
	<%= today2 %><br>
	<% out.println(today2); %><!-- これは<\%=と同じ意味、outの変数宣言も不要だしgetWriter()を入れなくてもいい、暗黙で宣言（暗黙宣言）される -->
<% } else {  %>
	<%="TまたはDを入力してください" %>
<% } %>
</body>
</html>
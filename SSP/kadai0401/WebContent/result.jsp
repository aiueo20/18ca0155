<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.time.LocalDateTime" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
<% LocalDateTime dt = LocalDateTime.now(); %>
<% String now = dt.getYear() + "年" + dt.getMonthValue() + "月" + dt.getDayOfMonth() + "日";%>
<%= now %>
<br>
<% if(dt.getHour() >= 6 & dt.getHour() <= 12){ %>
<%= "Good Morning" %>
<% } else if(dt.getHour() > 12 & dt.getHour() < 18){%>
<%= "Good  Afternoon" %>
<% } else { %>
<%= "Good Evening" %>
<% } %>
<br>

<% if(dt.getMonthValue() >= 3 & dt.getMonthValue() <= 5){ %>
<%= "春" %>
<% } else if(dt.getMonthValue() >= 6 & dt.getMonthValue() <= 8){ %>
<%= "夏" %>
<% } else if(dt.getMonthValue() >= 9 & dt.getMonthValue() <= 11){ %>
<%= "秋" %>
<% } else { %>
<%= "冬" %>
<% } %>
</body>
</html>
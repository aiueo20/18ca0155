<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="ex0601.Gakusei" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	学籍番号：<c:out value="${gakusei.gakusekiNo}"/><br>
	学生名：<c:out value="${gakusei.gakuseiName}"/>

<!--	学籍番号：<%= ((Gakusei)request.getAttribute("gakusei")).getGakusekiNo() %>
	学籍名：<%= ((Gakusei)request.getAttribute("gakusei")).getGakuseiName() %> -->
</body>
</html>
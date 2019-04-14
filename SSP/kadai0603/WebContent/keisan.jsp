<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="kadai0603.servlet.Untin" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/kadai0603/yamanote" method="get">
<% String rideon = (String)session.getAttribute("on");
 String getdown = (String)session.getAttribute("down");
 ArrayList<Untin> utList = (ArrayList)session.getAttribute("untinList");
 int rideonEkiNo = 0;
 int getdownEkiNo = 0;
 double utiDist = 0;
 double sotoDist = 0;
 int untin = 0;
 int price = 0;
 %>

<%
	//↓内回り距離と外回り距離
	for(int i = 0;i < utList.size();i++){
		if(rideon.equals(utList.get(i).getEkiName())){
			rideonEkiNo = utList.get(i).getEkiNo();
		}
		if(getdown.equals(utList.get(i).getEkiName())){
			getdownEkiNo = utList.get(i).getEkiNo();
		}
	}
	//↓rideonEkiNo = 乗車駅No、getdownEkiNo = 降車駅No
	if(rideonEkiNo < getdownEkiNo){
		int x = getdownEkiNo - rideonEkiNo;
		int uticount = 1;
		int sotocount = utList.size() - getdownEkiNo;
		for(int i = x;i != 0;i--){//あってる
			utiDist += utList.get(getdownEkiNo - uticount).getEkiDistance();
			uticount++;
		}
		for(int i = rideonEkiNo - 1;i >= 1;i--){//あってる
			sotoDist += utList.get(i).getEkiDistance();
		}
		for(int i = 0;i < sotocount;i++){//あってる
			sotoDist += utList.get(getdownEkiNo + i).getEkiDistance();
		}
	}
	if(rideonEkiNo > getdownEkiNo){
		int uticount = 1;
		for(int i = rideonEkiNo - getdownEkiNo;i > getdownEkiNo;i--){
			utiDist += utList.get(rideonEkiNo - uticount).getEkiDistance();
		}
		for(int i = rideonEkiNo;i < utList.size();i++){
			sotoDist += utList.get(i).getEkiDistance();
		}
		for(int i = 1;i < getdownEkiNo;i++){
			sotoDist += utList.get(i).getEkiDistance();
		}
	}

	if(sotoDist > utiDist){
		if(utiDist < 3){
			price = 140;
		}else if(utiDist < 6){
			price = 160;
		}else if(utiDist < 10){
			price = 170;
		}else if(utiDist < 15){
			price = 200;
		}else if(utiDist < 20){
			price = 260;
		}else if(utiDist < 25){
			price = 340;
		}else if(utiDist < 30){
			price = 410;
		}else if(utiDist < 35){
			price = 480;
		}
	}
	if(utiDist > sotoDist){
		if(sotoDist < 3){
			price = 140;
		}else if(sotoDist < 6){
			price = 160;
		}else if(sotoDist < 10){
			price = 170;
		}else if(sotoDist < 15){
			price = 200;
		}else if(sotoDist < 20){
			price = 260;
		}else if(sotoDist < 25){
			price = 340;
		}else if(sotoDist < 30){
			price = 410;
		}else if(sotoDist < 35){
			price = 480;
		}
	}
%>
<%	//小数点第2位で四捨五入
	BigDecimal bd1 = new BigDecimal(utiDist);
    BigDecimal bd2 = new BigDecimal(sotoDist);
    BigDecimal sotobd = bd1.setScale(1, BigDecimal.ROUND_HALF_UP);
    BigDecimal utibd = bd2.setScale(1, BigDecimal.ROUND_HALF_UP);
	request.setAttribute("price", price);
%>


運賃：<c:out value= "${ price}" />
<br>
乗車駅から降車駅(内回り)距離：<%= utibd.doubleValue() %>
<br>
乗車駅から降車駅(外回り)距離：<%= sotobd.doubleValue() %>
<br>
<a href="ryoukin.jsp">戻る</a>
</form>
</body>
</html>
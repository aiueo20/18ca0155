<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/kadai0603/yamanote" method="get">
乗車駅：
<select name="Rideon">
	<option value="東京">東京</option>
	<option value="神田">神田</option>
	<option value="秋葉原">秋葉原</option>
	<option value="御徒町">御徒町</option>
	<option value="上野">上野</option>
	<option value="鶯谷">鶯谷</option>
	<option value="日暮">日暮里</option>
	<option value="西日暮里">西日暮里</option>
	<option value="田端">田端</option>
	<option value="駒込">駒込</option>
	<option value="巣鴨">巣鴨</option>
	<option value="大塚">大塚</option>
	<option value="池袋">池袋</option>
	<option value="目白">目白</option>
	<option value="高田馬場">高田馬場</option>
	<option value="新大久保">新大久保</option>
	<option value="新宿">新宿</option>
	<option value="代々木">代々木</option>
	<option value="原宿">原宿</option>
	<option value="渋谷">渋谷</option>
	<option value="恵比寿">恵比寿</option>
	<option value="目黒">目黒</option>
	<option value="五反田">五反田</option>
	<option value="大崎">大崎</option>
	<option value="品川">品川</option>
	<option value="田町">田町</option>
	<option value="浜松町">浜松町</option>
	<option value="有楽町">有楽町</option>
</select>
<br>

降車駅：
<select name="Rideon">
	<option value="東京">東京</option>
	<option value="神田">神田</option>
	<option value="秋葉原">秋葉原</option>
	<option value="御徒町">御徒町</option>
	<option value="上野">上野</option>
	<option value="鶯谷">鶯谷</option>
	<option value="日暮">日暮里</option>
	<option value="西日暮里">西日暮里</option>
	<option value="田端">田端</option>
	<option value="駒込">駒込</option>
	<option value="巣鴨">巣鴨</option>
	<option value="大塚">大塚</option>
	<option value="池袋">池袋</option>
	<option value="目白">目白</option>
	<option value="高田馬場">高田馬場</option>
	<option value="新大久保">新大久保</option>
	<option value="新宿">新宿</option>
	<option value="代々木">代々木</option>
	<option value="原宿">原宿</option>
	<option value="渋谷">渋谷</option>
	<option value="恵比寿">恵比寿</option>
	<option value="目黒">目黒</option>
	<option value="五反田">五反田</option>
	<option value="大崎">大崎</option>
	<option value="品川">品川</option>
	<option value="田町">田町</option>
	<option value="浜松町">浜松町</option>
	<option value="有楽町">有楽町</option>
</select>
<br>
<input type="submit" value="計算">
<input type="reset" value="リセット" onclick="location.reload()">
</form>
</body>
</html>
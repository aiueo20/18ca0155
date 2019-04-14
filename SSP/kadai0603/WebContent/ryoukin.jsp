<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="kadai0603.servlet.Untin" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	ArrayList<Untin> arrUntin = new ArrayList<>();

	BufferedReader br = null;
	try {
		//テキストファイルを開く作業
	    br = new BufferedReader(new InputStreamReader(new FileInputStream("C:\\eclipse\\SSP\\kadai0603\\eki.txt")));

	//固定テンプレ外（コード変更は主に↓だけ）
	    String line;
	    while ((line = br.readLine()) != null) {//ファイル終端まで読み出す
	        System.out.println(line);
	        //substring()メソッド、指定したインデックスで文字列を分割a
	        //indexOf()メソッド、指定した文字のインデックスを取得
	        String[] ekisplit = line.split(",");
	        //ekisplit[0]=駅番号、ekisplit[1]=駅名、ekisplit[2]=前の駅との距離
	        //↓ekisplit[0]の文字列を数字のみの文字列にする
			String ekizero = ekisplit[0].replaceAll("[^-?0-9]+","");
			int ekiNo = Integer.parseInt(ekizero);
			double ekiDist = Double.parseDouble(ekisplit[2]);
            arrUntin.add(new Untin(ekiNo,ekisplit[1],ekiDist));
	    }
	//固定テンプレ外（コード変更は主に↑だけ）
	} catch (FileNotFoundException ex) {//存在しないファイル名を指定した時の例外
	    System.out.println(ex);
	} catch (IOException ex) {//一般的なIOアクセス時の例外
	    System.out.println(ex);
	} finally {//例外が発生してもしなくても最後に必ず実行する(非メモリデバイスの終端作業(close)を行うために使う)
	    if (br != null) {//txtファイルのオープンが成功していたら
	        try {
	            br.close();//クローズ、ファイルクローズに失敗した場合、非チェック例外(IOException)をスローする
	        } catch (IOException ex) {
	            System.out.println(ex);
	        }//l32～l35まではセット
	    }
	}

%>
<%
	session.setAttribute("untinList",arrUntin );
%>
<%	//Untin型arrUntinリストから、０番目のオブジェクト内にあるgetEkiNameメソッドを呼び出す↓
	//System.out.println(arrUntin.get(0).getEkiName());
	%>

</head>
<body>
<form action="/kadai0603/Yamanote" method="get">
乗車駅：
<select name="Rideon">
	<option value="東京"><%= arrUntin.get(0).getEkiName() %></option>
	<option value="神田"><%= arrUntin.get(1).getEkiName() %></option>
	<option value="秋葉原"><%= arrUntin.get(2).getEkiName() %></option>
	<option value="御徒町"><%= arrUntin.get(3).getEkiName() %></option>
	<option value="上野"><%= arrUntin.get(4).getEkiName() %></option>
	<option value="鶯谷"><%= arrUntin.get(5).getEkiName() %></option>
	<option value="日暮"><%= arrUntin.get(6).getEkiName() %></option>
	<option value="西日暮里"><%= arrUntin.get(7).getEkiName() %></option>
	<option value="田端"><%= arrUntin.get(8).getEkiName() %></option>
	<option value="駒込"><%= arrUntin.get(9).getEkiName() %></option>
	<option value="巣鴨"><%= arrUntin.get(10).getEkiName() %></option>
	<option value="大塚"><%= arrUntin.get(11).getEkiName() %></option>
	<option value="池袋"><%= arrUntin.get(12).getEkiName() %></option>
	<option value="目白"><%= arrUntin.get(13).getEkiName() %></option>
	<option value="高田馬場"><%= arrUntin.get(14).getEkiName() %></option>
	<option value="新大久保"><%= arrUntin.get(15).getEkiName() %></option>
	<option value="新宿"><%= arrUntin.get(16).getEkiName() %></option>
	<option value="代々木"><%= arrUntin.get(17).getEkiName() %></option>
	<option value="原宿"><%= arrUntin.get(18).getEkiName() %></option>
	<option value="渋谷"><%= arrUntin.get(19).getEkiName() %></option>
	<option value="恵比寿"><%= arrUntin.get(20).getEkiName() %></option>
	<option value="目黒"><%= arrUntin.get(21).getEkiName() %></option>
	<option value="五反田"><%= arrUntin.get(22).getEkiName() %></option>
	<option value="大崎"><%= arrUntin.get(23).getEkiName() %></option>
	<option value="品川"><%= arrUntin.get(24).getEkiName() %></option>
	<option value="田町"><%= arrUntin.get(25).getEkiName() %></option>
	<option value="浜松町"><%= arrUntin.get(26).getEkiName() %></option>
	<option value="新橋"><%= arrUntin.get(27).getEkiName() %></option>
	<option value="有楽町"><%= arrUntin.get(28).getEkiName() %></option>
</select>
<br>

降車駅：
<select name="Getdown">
	<option value="東京"><%= arrUntin.get(0).getEkiName() %></option>
	<option value="神田"><%= arrUntin.get(1).getEkiName() %></option>
	<option value="秋葉原"><%= arrUntin.get(2).getEkiName() %></option>
	<option value="御徒町"><%= arrUntin.get(3).getEkiName() %></option>
	<option value="上野"><%= arrUntin.get(4).getEkiName() %></option>
	<option value="鶯谷"><%= arrUntin.get(5).getEkiName() %></option>
	<option value="日暮"><%= arrUntin.get(6).getEkiName() %></option>
	<option value="西日暮里"><%= arrUntin.get(7).getEkiName() %></option>
	<option value="田端"><%= arrUntin.get(8).getEkiName() %></option>
	<option value="駒込"><%= arrUntin.get(9).getEkiName() %></option>
	<option value="巣鴨"><%= arrUntin.get(10).getEkiName() %></option>
	<option value="大塚"><%= arrUntin.get(11).getEkiName() %></option>
	<option value="池袋"><%= arrUntin.get(12).getEkiName() %></option>
	<option value="目白"><%= arrUntin.get(13).getEkiName() %></option>
	<option value="高田馬場"><%= arrUntin.get(14).getEkiName() %></option>
	<option value="新大久保"><%= arrUntin.get(15).getEkiName() %></option>
	<option value="新宿"><%= arrUntin.get(16).getEkiName() %></option>
	<option value="代々木"><%= arrUntin.get(17).getEkiName() %></option>
	<option value="原宿"><%= arrUntin.get(18).getEkiName() %></option>
	<option value="渋谷"><%= arrUntin.get(19).getEkiName() %></option>
	<option value="恵比寿"><%= arrUntin.get(20).getEkiName() %></option>
	<option value="目黒"><%= arrUntin.get(21).getEkiName() %></option>
	<option value="五反田"><%= arrUntin.get(22).getEkiName() %></option>
	<option value="大崎"><%= arrUntin.get(23).getEkiName() %></option>
	<option value="品川"><%= arrUntin.get(24).getEkiName() %></option>
	<option value="田町"><%= arrUntin.get(25).getEkiName() %></option>
	<option value="浜松町"><%= arrUntin.get(26).getEkiName() %></option>
	<option value="新橋"><%= arrUntin.get(27).getEkiName() %></option>
	<option value="有楽町"><%= arrUntin.get(28).getEkiName() %></option>
</select>
<br>
<input type="submit" value="計算">
<input type="reset" value="リセット" onclick="location.reload()">
</form>
</body>
</html>
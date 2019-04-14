package ex0303;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

//最も簡単なファイル書き込みプログラム（例外処理は特に行っていない）
public class BufferedWriter00 {
	public static void main(String[] args) {
		try {
			//↓の3行は文字列をテキストファイルへ書き込むときの定番！
			FileOutputStream fos = new FileOutputStream("test3.txt");//ファイルのオープン
			OutputStreamWriter osw = new OutputStreamWriter(fos);
			BufferedWriter bw = new BufferedWriter(osw);

			//1行書き込み
			bw.write("10,20,30,40");//1行文字列の書き込み、複数行書き込みたければ繰り返せばいい
			bw.newLine();//改行

			bw.flush();//フラッシュ（未書き込みのメモリ上のデータを書き出す）、クローズ前に一回だけ。
			bw.close();//ファイルのクローズ
			System.out.println("書き込み処理が終了しました");
		}catch(IOException ex){
			System.out.println(ex);
		}
	}
}

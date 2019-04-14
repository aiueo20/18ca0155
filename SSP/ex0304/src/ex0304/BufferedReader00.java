package ex0304;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class BufferedReader00 {
	public static void main(String[] args) {
		try {
			//テキストファイルを読み込むときの定番の3行
			FileInputStream fis = new FileInputStream("password.txt");//ファイルオープン
			InputStreamReader isr = new InputStreamReader(fis);
			BufferedReader br = new BufferedReader(isr);

			String line;
			while((line = br.readLine()) != null) {//ファイルから1行読み込む
				String id = line.substring(0, line.indexOf(','));
				String pass = line.substring(line.indexOf(',') + 1);
				System.out.println("ユーザID：" + id + "パスワード：" + pass);
				System.out.println(line);
			}
			//読み込む時にflashは必要ない
			br.close();//ファイルクローズ
		}catch(IOException ex) {
			System.out.println(ex);
		}
	}
}


import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

public class CSVRead00 {
    private String filename = "C:/Users/ca/SSP/ex0305/password.txt";

    public static void main(String[] args) {
        new CSVRead00();
    }

    //コンストラクタ上にファイルアクセス（読み出し操作を）記述している
    public CSVRead00() {
        BufferedReader br = null;
        try {
        	//テキストファイルを開く作業
            br = new BufferedReader(new InputStreamReader(new FileInputStream(filename)));

        //固定テンプレ外（コード変更は主に↓だけ）
            String line;
            while ((line = br.readLine()) != null) {//ファイル終端まで読み出す
                System.out.println(line);
                //substring()メソッド、指定したインデックスで文字列を分割
                //indexOf()メソッド、指定した文字のインデックスを取得
                String userId = line.substring(0,line.indexOf(","));//0番目から","の手前まで
                String password = line.substring(line.indexOf(",") + 1);//","の次の文字から最後まで
                System.out.println("ユーザID：" + userId);
                System.out.println("パスワード：" + password);
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
    }
}


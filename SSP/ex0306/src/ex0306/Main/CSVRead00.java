package ex0306.Main;//右クリ→パッケージで作成したパスが自動的に追加される

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

import ex0306.Sub.User;

public class CSVRead00 {
    private String filename = "C:/Users/ca/SSP/ex0306/password.txt";
    private User[] usr = new User[5];

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
            int i = 0;
            String line;
            while ((line = br.readLine()) != null) {//ファイル終端まで読み出す
                System.out.println(line);
                String userId = line.substring(0,line.indexOf(","));//0番目から","の手前まで
                String password = line.substring(line.indexOf(",") + 1);//","の次の文字から最後まで

                //5件分、usr配列にユーザIDとパスを格納する

                usr[i] = new User(userId,password);
                //配列の先頭から順にユーザIDとパスを表示する
                for(User u : usr) {
                	System.out.println("ユーザID　：" + u.getUserId());
                	System.out.println("パスワード：" + u.getPassword());
                }
//                System.out.println("ユーザID：" + userId);
//                System.out.println("パスワード：" + password);
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


package kadai0302.servlet;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kadai0302.User;

/**
 * Servlet implementation class CertifyServlet
 */
@WebServlet("/CertifyServlet")
public class CertifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CertifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//index.htmlから渡されたMemberIDとpasswordの値を取り出し
		//ArrayListに格納されているすべてのものと比較する
		//もし、両方マッチするものがあればマイページを開く
		//もし、マッチするものがなければ「ユーザIDまたはパスワードが違います」を表示
		//ヒント、まずはIDだけで比較してみる、一致したらそのIDとペアのパスワードと入力されたパスワードを比較し
		//一致するかどうかで表示するページを変更する

		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>kadai0302</title>");
		out.println("</head>");
		out.println("<body>");
		int count = 0;
		for(int i = 0;i < usr.size();i++) {
			if(usr.get(i).getUserId().equals(id)) {
				if(usr.get(i).getPassword().equals(pw)) {
					out.println("<hr>");
					out.println("マイページ");
					out.println("<hr>");
					out.println(usr.get(i).getUserId() + "さんのマイページ");
				}else {
					if(count == 0) {
						out.println("<hr>");
						out.println("ユーザIDまたはパスワードが違います");
						out.println("<hr>");
						count++;
					}
				}
			}
		}

		if(pw.isEmpty()) {
			if(count == 0) {
				out.println("<hr>");
				out.println("ユーザIDまたはパスワードが違います");
				out.println("<hr>");
				count++;
			}
		}

		if(id.isEmpty()) {
			if(count == 0) {
				out.println("<hr>");
				out.println("ユーザIDまたはパスワードが違います");
				out.println("<hr>");
				count++;
			}
		}
		out.println("<p><a href=\"../kadai0302/index.html\">戻る</a></p>");
		out.println("</body>");
		out.println("</html>");

	}

	//ここにArrayListの初期化
	ArrayList<User> usr = new ArrayList<>();

	@Override
	public void init() throws ServletException {
		// TODO 自動生成されたメソッド・スタブ
		super.init();

		//ここにpassword.txtを開いて、1行ずつ読み込み、ArrayListに格納する
        BufferedReader br = null;
        try {
        	//テキストファイルを開く作業
            br = new BufferedReader(new InputStreamReader(new FileInputStream("C:/Users/ca/SSP/kadai0302/password.txt")));

        //固定テンプレ外（コード変更は主に↓だけ）
            String line;
            while ((line = br.readLine()) != null) {//ファイル終端まで読み出す
                System.out.println(line);
                //substring()メソッド、指定したインデックスで文字列を分割
                //indexOf()メソッド、指定した文字のインデックスを取得
                String userId = line.substring(0,line.indexOf(","));//0番目から","の手前まで
                String password = line.substring(line.indexOf(",") + 1);//","の次の文字から最後まで
                usr.add(new User(userId,password));
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
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
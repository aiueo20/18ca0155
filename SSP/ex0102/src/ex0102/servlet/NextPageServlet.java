package ex0102.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NextPageServlet
 */
@WebServlet("/next")//URLマッピング≒サーブレットの位置
public class NextPageServlet extends HttpServlet {//スーパークラスに注目
	private static final long serialVersionUID = 1L;//シリアライズで利用する、今回は無視

    /**
     * @see HttpServlet#HttpServlet()
     */
    public NextPageServlet() {//コンストラクタ（初期処理をする場合はここに記述）
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //リクエストは要求（HTMLのトップページから何か値を渡されて保持してる）
    //レスポンスは応答（このサーブレットから返すデータを保持する）
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//↓サーブレットでWebページを作成している＝TomcatからApacheへ表示するページ情報を返すのでレスポンス、つまりアパッチがクライアントへ返す
		PrintWriter out = response.getWriter();
		//getWriter()を実行すると、表示用の領域を取得（イメージ：空ページを生成する）
		//out参照変数を使ってprintln()を実行する
		//中身はHTMLのタグを順番に記述する→HTMLページを作成することができる
		//この構造が毎回毎回使われる
		out.println("<html>");
		out.println("<head>");
		out.println("<title>next</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("Page : 2");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package ex0201.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AccountServlet
 */
@WebServlet("/account")
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	public void destroy() {
		// TODO 自動生成されたメソッド・スタブ
		super.destroy();
		System.out.println("****destroy()メソッドが呼び出されました****");
	}

	@Override
	public void init() throws ServletException {
		// TODO 自動生成されたメソッド・スタブ
		super.init();
		System.out.println("****init()メソッドが呼び出されました****");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);

		response.setContentType("text/html; charset=UTF-8");//コンテンツの形式を指定＆エンコード指定

		PrintWriter out = response.getWriter();

		request.setCharacterEncoding("UTF-8");//リクエストのエンコード指定（受け取った文字列をUTF-8とする）

		String str = request.getParameter("myname");
		//getWriter()を実行すると、表示用の領域を取得（イメージ：空ページを生成する）
		//out参照変数を使ってprintln()を実行する
		//中身はHTMLのタグを順番に記述する→HTMLページを作成することができる
		//この構造が毎回毎回使われる
		out.println("<html>");
		out.println("<head>");
		out.println("<title>next</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("Page : 2(doPost()私の名前は)" + str + "です");
		out.println("が入力されました");
		out.println("</body>");
		out.println("</html>");
	}

}

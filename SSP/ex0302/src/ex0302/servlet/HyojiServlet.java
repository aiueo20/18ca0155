package ex0302.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HyojiServlet
 */
@WebServlet({ "/hyoji", "/display" })
public class HyojiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public HyojiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
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
		String message = request.getParameter("message");
		out.println("Message" + message);
//		out.println("doGet()メソッド実行");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
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
		String message = request.getParameter("message");
		out.println("Message" + message);
//		out.println("doPost()メソッド実行");
		out.println("</body>");
		out.println("</html>");
	}

}

package ex0301.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NextServlet
 */
@WebServlet("/next")
public class NextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public NextServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");//コンテンツの形式を指定＆エンコード指定
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");//リクエストのエンコード指定（受け取った文字列をUTF-8とする）
		out.println("<html>");
		out.println("<head>");
		out.println("<title>next</title>");
		out.println("</head>");
		out.println("<body>");

		String yesno = request.getParameter("yesno");//yesnoはHTMLのnameと同じ値であること（キー）
		out.println(yesno + "がチェックされました<br>");
		String number = request.getParameter("number");
		out.println(number + "が選択されました<br>");
		String tarea = request.getParameter("tarea");
		out.println(tarea + "がチェックされました<br>");
		String[] meal = request.getParameterValues("meal");
//		for(int i = 0;i < meal.length;i++) {
//			out.println(meal[i] + "<br>");
//		}

		for(String m: meal) {
			out.println(m + "<br>");
		}
		//まとめ、テキストボックス、ラジオボタン、ドロップダウンリスト、テキストエリアは全てキーがnameで指定された値
		//valueが入力されたもの（文字列）として取得可能

		//チェックボックスは、getParameterでは取得できない（同時に複数の選択が入る場合があるため）

		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);

	}

}

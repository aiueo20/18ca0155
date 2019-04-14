package kadai0103.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class KazuAte01
 */
@WebServlet("/KazuAte01")
public class KazuAte01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public KazuAte01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");//コンテンツの形式を指定＆エンコード指定

		PrintWriter out = response.getWriter();

		String x = request.getParameter("kazu");

		out.println("<html>");
		out.println("<head>");
		out.println("<title>next</title>");
		out.println("</head>");
		out.println("<body>");

		try {

			int kazu = Integer.parseInt(x);

			int rand = (int)(Math.random()*10.0);

			if(rand == kazu) {
				out.println("大当たり！");
			}else if(kazu >= 0 && kazu <= 9) {
				out.println("ハズレ！当たりは" + rand + "でした！");
			}else {
				out.println("入力エラー：０から９までの数字を入力してください。");
			}
		}catch(NumberFormatException e) {
			out.println("入力エラー：０から９までの数字を入力してください。");
		}finally {
			out.println("<p><a href=\"../kadai0103/index.html\">戻る</a>");
			out.println("</body>");
			out.println("</html>");
		}

	}

}

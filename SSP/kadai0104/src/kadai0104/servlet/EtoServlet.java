package kadai0104.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EtoServlet
 */
@WebServlet("/EtoServlet")
public class EtoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EtoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");//コンテンツの形式を指定＆エンコード指定
		//干支の計算方法→2003 mod 12 = 11 →2003年の十二支は未
		PrintWriter out = response.getWriter();
		String x = request.getParameter("seireki");
		out.println("<head>");

		try {
			int seirekimod = (8 + Integer.parseInt(x)) % 12;

			String[] etos = {"子（ね）","丑（うし）","寅（とら）","卯（う）","辰（たつ）","巳（み）","午（うま）","未（ひつじ）","申（さる）","酉（とり）","戌（いぬ）","亥（い）"};

			out.println("<title>next</title>");
			out.println("</head>");
			out.println("<body>");
			if(Integer.parseInt(x) < 0) {
				out.println("負の数が入力されています。");
			}else {
				out.println("あなたの干支：" + etos[seirekimod]);
			}
		}catch(NumberFormatException e) {
			if(x.isEmpty()) {
				out.println("未入力エラー：生まれた年を入力してください。");
			}else {
				out.println("入力エラー：数字を入力してください。");
			}
		}finally {
			out.println("<p><a href=\"../kadai0104/index.html\">戻る</a>");
			out.println("</body>");
			out.println("</html>");
		}
	}

}

package kadai0203.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class YoteiServlet
 */
@WebServlet("/yotei")
public class YoteiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public YoteiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");//コンテンツの形式を指定＆エンコード指定
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");//リクエストのエンコード指定（受け取った文字列をUTF-8とする）
		out.println("<html>");
		out.println("<head>");
		out.println("<title>next</title>");
		out.println("</head>");
		out.println("<body>");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String text = request.getParameter("text");
		out.println("日付：" + date + "<br>");
		out.println("時刻：" + time + "<br>");
		out.println("内容：" + text + "<br>");
		out.println("</body>");
		out.println("</html>");

	}

}

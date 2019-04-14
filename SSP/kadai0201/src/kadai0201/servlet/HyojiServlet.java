package kadai0201.servlet;

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
@WebServlet("/hyoji")
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
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");//コンテンツの形式を指定＆エンコード指定
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");//リクエストのエンコード指定（受け取った文字列をUTF-8とする）
		out.println("<html>");
		out.println("<head>");
		out.println("<title>next</title>");
		out.println("</head>");
		out.println("<body>");
		String number = request.getParameter("number");
		out.println("学籍番号　" + number + "<br>");
		String myname = request.getParameter("myname");
		out.println("氏名　　　　" + myname + "<br>");
		String gender = request.getParameter("gender");
		out.println("性別　　　　" + gender + "<br>");
		out.println("</body>");
		out.println("</html>");
	}

}

package kadai0202.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EnqServlet
 */
@WebServlet("/EnqServlet")
public class EnqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnqServlet() {
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
		out.println("<h1>あなたの回答</h1><br>");
		String gender = request.getParameter("gender");
		out.println("性別：" + gender + "<br>");
		String[] hobby = request.getParameterValues("hobby");
		int count = 1;
		String job =request.getParameter("job");
		out.println("職業：" + job + "<br>");
		out.println("趣味：");
		try {
			for(String h:hobby) {
				out.println(h);
				if(count < hobby.length) {
					out.println(",");
				}
				count++;
			}
		}catch(Exception e) {
			out.println("ありません");
		}
		out.println("<br>");
		String tarea = request.getParameter("tarea");
		out.println("自由意見：" + tarea + "<br>");
		out.println("<p><a href=\"../kadai0202/index.html\">戻る</a>");
		out.println("</body>");
		out.println("</html>");
	}

}

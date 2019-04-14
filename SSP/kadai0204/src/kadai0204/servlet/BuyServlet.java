package kadai0204.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BuyServlet
 */
@WebServlet("/BuyServlet")
public class BuyServlet extends HttpServlet {
	static int x1 = 2;
	static int x2 = 2;
	static int x3 = 2;
	static int kin1 = 0;
	static int kin2 = 0;
	static int kin3 = 0;
	static int[] tanka = {2000,3500,0};
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	static void tankahanbetu(String p1,String p2,String p3) {
		if(p1.equals("マウス")){
			x1 = 1;
		}

		if(p2.equals("マウス")){
			x2 = 1;
		}

		if(p3.equals("マウス")){
			x3 = 1;
		}
	}

	static void kingaku(String kazu1, String kazu2,String kazu3) {
		if(x1 == 1) {
			kin1 = Integer.parseInt(kazu1) * tanka[1];
		}else if(x1 == 0){
			kin1 = Integer.parseInt(kazu1) * tanka[0];
		}
		if(x2 == 1) {
			kin2 = Integer.parseInt(kazu2) * tanka[1];
		}else if(x2 == 0){
			kin2 = Integer.parseInt(kazu2) * tanka[0];
		}
		if(x3 == 1) {
			kin3 = Integer.parseInt(kazu3) * tanka[1];
		}else if(x3 == 0){
			kin3 = Integer.parseInt(kazu3) * tanka[0];
		}


	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");//コンテンツの形式を指定＆エンコード指定
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");//リクエストのエンコード指定（受け取った文字列をUTF-8とする）
		out.println("<html>");
		out.println("<head>");
		out.println("<title>next</title>");
		out.println("</head>");
		out.println("<body>");
		String kaiinnbangou = request.getParameter("kaiinnbangou");
		String kaiinnmei = request.getParameter("kaiinnmei");
		String p1 = request.getParameter("p1");
		String s1 = request.getParameter("s1");
		String p2 = request.getParameter("p2");
		String s2 = request.getParameter("s2");
		String p3 = request.getParameter("p3");
		String s3 = request.getParameter("s3");

		tankahanbetu(p1,p2,p3);
		kingaku(s1,s2,s3);

		out.println("<h1>あなたのご注文内容</h1>");
		out.println("会員番号：" + kaiinnbangou + "<br>");
		out.println("会員名：" + kaiinnmei + "<br>");
		out.println("<hr>");
		out.println("<table border=\"1\">");
		out.println("<tr>");
		out.println("<th>商品名</th>");
		out.println("<th>単価</th>");
		out.println("<th>数量</th>");
		out.println("<th>金額</th>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>" + p1 + "</td>");
		out.println("<td>" + tanka[x1] + "</td>");
		out.println("<td>" + s1 + "</td>");
		out.println("<td>" + kin1 + "</td>");
		out.println("<tr>");
		out.println("<tr>");
		out.println("<td>" + p2 + "</td>");
		out.println("<td>" + tanka[x2] + "</td>");
		out.println("<td>" + s2 + "</td>");
		out.println("<td>" + kin2 + "</td>");
		out.println("<tr>");
		out.println("<tr>");
		out.println("<td>" + p3 + "</td>");
		out.println("<td>" + tanka[x3] + "</td>");
		out.println("<td>" + s3 + "</td>");
		out.println("<td>" + kin3 + "</td>");
		out.println("</tr>");
		out.println("<tr>" );
		int goukei = kin1 + kin2 + kin3;
		out.println("<td colspan=\"4\">合計" + String.valueOf(goukei));
		out.println("</td>" );
		out.println("</tr>" );
		out.println("</table>");
		out.println("<br>");
		out.println("<hr>");
		out.println("</body>");
		out.println("</html>");

	}

}

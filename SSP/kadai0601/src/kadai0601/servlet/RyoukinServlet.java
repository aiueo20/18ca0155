package kadai0601.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kadai0601.Calculate;

/**
 * Servlet implementation class RyoukinServlet
 */
@WebServlet("/Ryoukin")
public class RyoukinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public RyoukinServlet() {
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
		request.setCharacterEncoding("UTF-8");//リクエストのエンコード指定（受け取った文字列をUTF-8とする）

		int calcprice = 0;
		Calculate calculate = new Calculate();
		String teikei = request.getParameter("teikei");
		String sokutatu = request.getParameter("sokutatu");
		String kikakunaigai = request.getParameter("kikakunaigai");
		String kannikakitome = request.getParameter("kannikakitome");
		String sheets = request.getParameter("maisu");
		try {
			int sheetsNo = Integer.parseInt(sheets);
			if(teikei.equals("定形外")) {
				if(kikakunaigai.equals("規格外")) {
					calcprice = sheetsNo * 200;
					if(sokutatu.equals("速達")) {
						calcprice += 280;
					}
					if(kannikakitome.equals("簡易書留")) {
						calcprice += 310;
					}
				}
				if(kikakunaigai.equals("規格内")) {
					calcprice = sheetsNo * 120;
					if(sokutatu.equals("速達")) {
						calcprice += 280;
					}
					if(kannikakitome.equals("簡易書留")) {
						calcprice += 310;
					}
				}
			}

			if(teikei.equals("定形")) {
				calcprice = sheetsNo * 82;
				if(sokutatu.equals("速達")) {
					calcprice += 280;
				}
				if(kannikakitome.equals("簡易書留")) {
					calcprice += 310;
				}
			}


		}catch(NumberFormatException e) {
			calculate.setMsg("注:数字を入力してください。");
		}catch(Exception e) {

		}

		calculate.setPrice(calcprice);
		request.setAttribute("calculate", calculate);

		RequestDispatcher rd = request.getRequestDispatcher("/ryoukin.jsp");

		rd.forward(request,  response);
	}

}

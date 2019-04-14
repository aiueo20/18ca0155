package kadai0501.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DispachServlet
 */
@WebServlet("/Dispatch")
public class DispachServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DispachServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String money = request.getParameter("money");
		int intmoney = Integer.parseInt(money);
		if(intmoney >= 1000) {
			//HighClass.jspに
			RequestDispatcher rd = request.getRequestDispatcher("/HighClass.jsp");
			rd.forward(request, response);
		}else if(intmoney < 1000) {
			//StandardClass.jspに
			RequestDispatcher rd = request.getRequestDispatcher("/StandardClass.jsp");
			rd.forward(request, response);
		}
	}

}

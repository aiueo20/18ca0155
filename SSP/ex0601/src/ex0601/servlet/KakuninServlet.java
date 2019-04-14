package ex0601.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ex0601.Gakusei;

/**
 * Servlet implementation class KakuninServlet
 */
@WebServlet("/kakunin")
public class KakuninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public KakuninServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		Gakusei gakusei = new Gakusei();

		gakusei.setGakusekiNo(request.getParameter("no"));
		gakusei.setGakuseiName(request.getParameter("shimei"));

		request.setAttribute("gakusei", gakusei);

		RequestDispatcher rd = request.getRequestDispatcher("/kakunin.jsp");
		//" /kakunin.jsp" <-- WebContentノード直下の意味
		// Servletに遷移する場合は@WebServlet("/kakunin")の"/kakunin"

		rd.forward(request,  response);
	}

}

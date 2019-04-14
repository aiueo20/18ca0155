package ex0501.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Hyoji1Servlet
 */
@WebServlet("/hyoji1")
public class Hyoji1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hyoji1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		String keyword = request.getParameter("keyword");
		request.setAttribute("kw", keyword);

		HttpSession session = request.getSession();
		session.setAttribute("kw", keyword);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/hyoji1.jsp");
		rd.forward(request,  response);
	}

}

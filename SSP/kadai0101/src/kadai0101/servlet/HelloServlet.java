package kadai0101.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		LocalDateTime date = LocalDateTime.now();

		DateTimeFormatter d1 = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		DateTimeFormatter d2 = DateTimeFormatter.ofPattern("HH");
		String s = d1.format(date);
		String s2 = d2.format(date);
		int hour = Integer.parseInt(s2);

		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.println("<head>");
		out.println("<title>hello</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("Page:2" + "<br>" + s + "<br>");
		if(6 <= hour && hour <= 12){
			out.println("Good Morning");
		}else if(12 <= hour && hour <= 18){
			out.println("Good Afternoon");
		}else{
			out.println("Good Evening");
		}
		out.println("");
		out.println("</body>");
		out.println("</html>");

	}

}

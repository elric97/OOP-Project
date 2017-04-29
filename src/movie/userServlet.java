package movie;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class userServlet
 */
@WebServlet("/userServlet")
public class userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public String userName,pass;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		userName=request.getParameter("uname");
		pass=request.getParameter("pass");
		HttpSession session=request.getSession();
		user u1=new user();
		session.setAttribute("uname", null);
		try
		{
			if (u1.auth(userName,pass))
			{
				session.setAttribute("uname", userName);
				int u=u1.uid(userName);
				session.setAttribute("uid", u);
				response.sendRedirect("index.jsp");
			}
			else
			{
				session.setAttribute("uname", null);
				response.sendRedirect("index.jsp");
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}

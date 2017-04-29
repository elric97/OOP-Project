package movie;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userReg
 */
@WebServlet("/userReg")
public class userReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public String userName,pass,email;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		userName=request.getParameter("name");
		email=request.getParameter("email");
		pass=request.getParameter("pass");
		user u= new user();
		try
		{
			if (u.reg(userName, email, pass))
			{
				response.sendRedirect("signup.jsp");
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

}

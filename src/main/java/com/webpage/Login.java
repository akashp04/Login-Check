package com.webpage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pwd");
		LoginDao dao = new LoginDao();
		
		if(dao.check(uname, pass)) {
			HttpSession session = request.getSession();			
			session.setAttribute("username", uname);
			response.sendRedirect("Home.jsp");
//			System.out.println("After Home.JSP");
		}
		else
//			System.out.println("Before Login.JSP");
			response.sendRedirect("Login.jsp");
				
	}


}

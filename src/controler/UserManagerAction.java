package controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DaoFactory;
import model.Users;

@WebServlet("/traveller.do")
public class UserManagerAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String choose = request.getParameter("choose");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String telephone = request.getParameter("telephone");
		String e_mail= request.getParameter("e_mail");
		String youbian= request.getParameter("youbian");
		if(choose.equals("login")){
			Users user = DaoFactory.INSTANCE.login(username, password);
			if (user != null)
				response.sendRedirect("index.jsp");
			else 
				response.sendRedirect("index.jsp");
		}if(choose.equals("register")){
			int result=DaoFactory.INSTANCE.register(username, password, telephone, e_mail, youbian);
			if (result ==1){
				response.sendRedirect("index.jsp");
			}
				else{
					response.sendRedirect("register.jsp");
				}		
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}

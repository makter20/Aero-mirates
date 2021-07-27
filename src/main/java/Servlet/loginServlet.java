package Servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;
/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private usersModel user;
	private loginValidation val;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() throws ServletException {
		val = new loginValidation();
		
	}
    
    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String pass = request.getParameter("pwd");
		user = new usersModel(email,pass);
		try {
			boolean check = val.loginValidate(user);
			if(check) {
				String userType = val.gettype();
				if(userType.equals("User")){
					response.sendRedirect("/TravelAgency/allJSPclasses/userScreen.jsp");
				}else {
					response.sendRedirect("/TravelAgency/allJSPclasses/adminScreen.jsp");
				}
			}else {
				response.sendRedirect("/TravelAgency/allJSPclasses/login.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

}

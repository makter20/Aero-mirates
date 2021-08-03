package Servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;

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
		
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String pass = request.getParameter("pwd");
		user = new usersModel(email,pass);
//		user.setemail(email);
//		user.setpassword(pass);
		try {
			boolean check = val.loginValidate(user);
			if(check) {
				String userType = val.gettype();
				if(userType.equals("User")){
					System.out.println("user Page");
					response.sendRedirect("/TravelAgency/allJSPclasses/userScreen.jsp");
				}else {
					response.sendRedirect("/TravelAgency/allJSPclasses/adminScreen.jsp");
				}
			}else {
				System.out.println("Wrong username and password");
				response.setContentType("text/html");  
				session.setAttribute("errorMessage", "Invalid email and password");
				request.setAttribute("errorMessage", "Invalid email and password");
				response.sendRedirect("/TravelAgency/allJSPclasses/login.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		
	}

}

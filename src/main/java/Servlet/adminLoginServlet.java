package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.loginValidation;
import model.adminModel;

/**
 * Servlet implementation class adminLoginServlet
 */
@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private adminModel admin;
	private loginValidation val;
       
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String key = request.getParameter("adminUserName");
		String pass = request.getParameter("pwd");
		admin = new adminModel(key,pass);
		try {
			boolean check = val.loginValidate(admin);
			if(check) {
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

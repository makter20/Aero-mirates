package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.adminLoginValidation;
import model.adminModel;
import model.loginValidation;

/**
 * Servlet implementation class adminLoginServlet
 */
@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private adminModel admin;
	private adminLoginValidation val;
       
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() throws ServletException {
		val = new adminLoginValidation();
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String key = request.getParameter("adminUserName");
		String pass = request.getParameter("pwd");
		admin = new adminModel(key,pass);
		try {
			boolean check = val.adminLoginValidate(admin);
			if(check){
				response.sendRedirect("/TravelAgency/allJSPclasses/adminScreen.jsp");
			}else {
				response.sendRedirect("/TravelAgency/allJSPclasses/adminLogin.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

}
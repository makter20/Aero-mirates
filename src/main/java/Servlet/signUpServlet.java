package Servlet;
import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;

/**
 * Servlet implementation class signUpServlet
 */
@WebServlet("/signUpServlet")
public class signUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private usersModel user;
	private signUpUser signUp;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signUpServlet() {
        super();
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() throws ServletException {
		signUp = new signUpUser();
		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String phone_number = request.getParameter("phone_number");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String userType = request.getParameter("userType");
		
		
		
		user = new usersModel(firstName, lastName, phone_number, email, password, userType);
		HttpSession session = request.getSession();
		try {
			if(signUp.createNewAccount(user)) {
				System.out.println("Created!");
				
				session.setAttribute("email", "avaiable");
				
			} else {
				session.setAttribute("email", "not available");
				
			}
			//signUp.createNewAccount(user);
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("/TravelAgency/allJSPclasses/signUp.jsp");
		
	}

}

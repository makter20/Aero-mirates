package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;

/**
 * Servlet implementation class userTableServlet
 */
@WebServlet("/userTableServlet")
public class userTableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<List<String>> users;
	private searchModel search;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userTableServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() throws ServletException {
 		search = new searchModel();	
 	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		try {
			users = search.getAllUsers();
			session.setAttribute("users",users);
		} catch (Exception e){
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		response.sendRedirect("/TravelAgency/allJSPclasses/adminUserTable.jsp");
	}

}

package Servlet;

import java.io.IOException;
import java.util.ArrayList;
//import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;

/**
 * Servlet implementation class searchServlet
 */
@WebServlet("/searchServlet")
public class searchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private queryModel query;
    private searchModel search;
    private List<List<String>> scheduledFlights;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() throws ServletException {
		search = new searchModel();
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String departing_from = request.getParameter("departing_from");
		String going_to = request.getParameter("going_to");
		String departing_date = request.getParameter("departing_date");
		String returning_date = request.getParameter("returning_date");
		query = new queryModel(departing_from,going_to,departing_date,returning_date);
		HttpSession session = request.getSession();
		try {
			response.setContentType("text/html");
			scheduledFlights = search.userSearch(query);
			session.setAttribute("scheduledFlights", scheduledFlights);
//			RequestDispatcher rd = request.getRequestDispatcher("/TravelAgency/allJSPclasses/searchResults.jsp");
//		    rd.forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		response.sendRedirect("/TravelAgency/allJSPclasses/searchResults.jsp");
	}
}
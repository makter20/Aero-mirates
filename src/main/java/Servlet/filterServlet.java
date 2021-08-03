package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;

import oracleConnection.WebConnection;
import oracleConnection.printingSQLExc;

/**
 * Servlet implementation class filterServlet
 */
@WebServlet("/filterServlet")
public class filterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private List<List<String>>filterFlights; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public filterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String departing =request.getParameter("departing_from");
		System.out.println(departing);
		String going =(String) request.getParameter("going_to");
		System.out.println(going);
		String filterDate = request.getParameter("filter_date");
		System.out.println(filterDate);
		Date sqlDate = Date.valueOf(filterDate);
		filterFlights = new ArrayList<List<String>>();
		try (Connection connection = WebConnection.getConnection()) {
			
			String pquery = "SELECT * FROM SCHEDULES WHERE sourceId = ? AND destinationId = ? AND scheduledDate = ?";
			PreparedStatement pst = connection.prepareStatement(pquery);
			pst.setString(1, departing);
			pst.setString(2, going);
			pst.setDate(3, sqlDate);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				filterFlights.add(new ArrayList<String>());
				filterFlights.get(filterFlights.size()-1)
								.add(rs.getString("scheduleId"));
				filterFlights.get(filterFlights.size()-1)
								.add(rs.getString("sourceId"));
				filterFlights.get(filterFlights.size()-1)
								.add(rs.getString("destinationId"));
				filterFlights.get(filterFlights.size()-1)
								.add(rs.getString("capacity"));
				filterFlights.get(filterFlights.size()-1)
								.add(rs.getString("scheduledDate"));
				filterFlights.get(filterFlights.size()-1)
								.add(rs.getString("flightId"));
				System.out.println(rs.getString("scheduledDate"));
				
				
			}
			if(!filterFlights.isEmpty()) {
				
				session.setAttribute("filterFlights", filterFlights);
				response.sendRedirect("/TravelAgency/allJSPclasses/searchResults.jsp");
				
			} else {
				boolean check = false;
				request.setAttribute("results", check);
				out.println("<p>No date found!</p>");
				response.sendRedirect("/TravelAgency/allJSPclasses/searchResults.jsp");
			}
			
			
			rs.close();
			connection.close();
			
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		
		
		
	}

}

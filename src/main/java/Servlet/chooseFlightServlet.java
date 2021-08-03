package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.flightModel;
import model.searchModel;

/**
 * Servlet implementation class createFlightServlet
 */
@WebServlet("/chooseFlightServlet")
public class chooseFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private searchModel search;
	private flightModel flight;
	private boolean valid;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chooseFlightServlet() {
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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		flight = new flightModel(request.getParameter("flightName"),
				request.getParameter("flightID"),
				request.getParameter("airlineName"));
		valid = search.findFlight(flight);
		try {
			if (valid) {
				session.setAttribute("flight", flight);
				session.setAttribute("added", false);
				response.sendRedirect("/TravelAgency/allJSPclasses/addToSchedule.jsp");
			}
			else {
				response.sendRedirect("/TravelAgency/allJSPclasses/chooseFlight.jsp");
			}
			
		} catch (Exception e) {
			
		}
	}

}
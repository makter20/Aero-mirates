package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;
/**
 * Servlet implementation class createFlightServlet
 */
@WebServlet("/createFlightServlet")
public class createFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private flightModel flight;
	private flightInputModel input;
	boolean check;
	private searchModel search;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createFlightServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() throws ServletException {
  		input = new flightInputModel();
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
		String flightID = request.getParameter("flightID");
		String flightName = request.getParameter("flightName");
		String airlineCode = request.getParameter("airlineCode");
		flight = new flightModel(flightID, flightName, airlineCode);
		try {
			check = search.findFlightID(flight);
			if(check) {
				session.setAttribute("added", false);
				System.out.print("added = false");
				response.sendRedirect("/TravelAgency/allJSPclasses/createFlight.jsp");
			}
			else {
				input.insertFlight(flight);
				session.setAttribute("added",true);
				response.sendRedirect("/TravelAgency/allJSPclasses/createFlight.jsp");
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

}

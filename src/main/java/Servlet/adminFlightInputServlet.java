package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.util.List;

import model.*;

/**
 * Servlet implementation class adminFlightInput
 */
@WebServlet("/adminFlightInputServlet")
public class adminFlightInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private scheduleModel schedule;
    private boolean check;
    private adminFlightInputModel input;
    private searchModel search;
    private List<List<String>> flightsList;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminFlightInputServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() throws ServletException {
		input = new adminFlightInputModel();
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
//		String scheduleID = request.getParameter("scheduleID");
//		String departure = request.getParameter("departure");
//		String arrival = request.getParameter("arrival");
//		int capacity = Integer.parseInt(request.getParameter("capacity"));
//		String scheduleDate = request.getParameter("scheduleDate");
//		String flightID = request.getParameter("flightID");
//		
//		schedule = new scheduleModel(scheduleID,departure,arrival,capacity,scheduleDate,flightID);
		
		try {
//			check = input.createNewFlight(schedule);
//			if(check) {
//				session.setAttribute("error",false);	
//			}
//			else {
//				session.setAttribute("error", true);
//			}
			flightsList = search.getAllFlights();
			session.setAttribute("flights",flightsList);
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		response.sendRedirect("/TravelAgency/allJSPclasses/createFlight.jsp");
	}

}
//
//try {
//	scheduledFlights = search.getAll();
//	System.out.println(scheduledFlights.size());
//	session.setAttribute("scheduledFlights",scheduledFlights);
//} catch(Exception e) {
//	e.printStackTrace();
//	System.out.println(e.getMessage());
//}

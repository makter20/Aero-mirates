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
@WebServlet("/scheduleInputServlet")
public class scheduleInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private scheduleModel schedule;
    private scheduleInputModel input;
    private boolean check;
    
    private searchModel search;
    private List<List<String>> flightsList;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public scheduleInputServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() throws ServletException {
		input = new scheduleInputModel();
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
		String scheduleID = request.getParameter("scheduleID");
		String departure = request.getParameter("departure");
		String arrival = request.getParameter("arrival");
		int capacity = Integer.parseInt(request.getParameter("capacity"));
		String scheduleDate = request.getParameter("scheduleDate");
		String scheduleTime = request.getParameter("scheduleTime");
		String returnDate = request.getParameter("returnDate");
		String flightID = request.getParameter("flightID");
		
		schedule = new scheduleModel(scheduleID,flightID,departure,arrival,capacity,scheduleDate,scheduleTime,returnDate);
		
		try {
			check = search.findSchedule(schedule);
			if(check) {
				session.setAttribute("added", false);
				System.out.print("added = false");
				response.sendRedirect("/TravelAgency/allJSPclasses/addToSchedule.jsp");
			}
			else {
				input.scheduleFlight(schedule);
				session.setAttribute("added",true);
				response.sendRedirect("/TravelAgency/allJSPclasses/addToSchedule.jsp");
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

}
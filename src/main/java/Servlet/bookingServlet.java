package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bookingModel;
import model.bookingQuery;

/**
 * Servlet implementation class bookingServlet
 */
@WebServlet("/bookingServlet")
public class bookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private bookingModel booking;
	public static String scId;
       
    
    public static String getScheduleId() {
    	return scId;
    }


	/**
     * @see HttpServlet#HttpServlet()
     */
    public bookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    

    public int getRandom(int max){ 
    	return (int) (Math.random()*max);
    	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String scheduleId = request.getParameter("scheduleId");
		System.out.println(request.getParameter("scheduleId"));
		String email = request.getParameter("email");
		System.out.println(request.getParameter("email"));
		String date = request.getParameter("flight_date");
		System.out.println(request.getParameter("flight_date"));
		String seat_number = request.getParameter("seat_number");
		
		int id = getRandom(10000);
		boolean seatcheck = bookingQuery.seatVal(seat_number);
		
		String bookingId = Integer.toString(id);
		
		booking = new bookingModel(bookingId, email, scheduleId, date, seat_number );
		String bdEmail = bookingQuery.emailVal(email);
		scId = scheduleId;
		if(email.equals(bdEmail)){
			
			System.out.println("email matched");
			
			if(seatcheck) {
				System.out.println("seat is available");
				bookingQuery.booking(booking);
				session.setAttribute("bookingId", bookingId);
				response.sendRedirect("/TravelAgency/allJSPclasses/payment.jsp");
			} else {
				System.out.println("seat is not available");
				session.setAttribute("seat", "Seat is not available");
				response.sendRedirect("/TravelAgency/allJSPclasses/booking.jsp");
			}
			
		} else {
			session.setAttribute("email", "Email does not match");
			response.sendRedirect("/TravelAgency/allJSPclasses/booking.jsp");
		}
		
	}

}

package Servlet;
import model.bookingModel;
import java.sql.*;
import oracleConnection.WebConnection;
import oracleConnection.printingSQLExc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class cancelBookingServlet
 */
@WebServlet("/cancelBookingServlet")
public class cancelBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private bookingModel booked;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		HttpSession session = request.getSession();
//		String bookingId = booked.getBookingId();
		String bookingId = (String)session.getAttribute("bookingId");
		System.out.println("bookingId= "+bookingId);
		try(Connection con = WebConnection.getConnection()){
			
			String delete = "DELETE FROM Booking WHERE bookingId = '"+bookingId+"'";
			Statement st = con.createStatement();
			int rs = st.executeUpdate(delete);
			if(rs == 1) {
				System.out.println("Booking deleted!");
				session.setAttribute("record", "Deleted");
				RequestDispatcher rd = request.getRequestDispatcher("/TravelAgency/allJSPclasses/userScreen.jsp");
				rd.forward(request, response);
				//response.sendRedirect("/TravelAgency/allJSPclasses/userScreen.jsp");
			}
			else {
				response.sendRedirect("/TravelAgency/allJSPclasses/userScreen.jsp");
			}
			
			
		} catch(SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
	}

}

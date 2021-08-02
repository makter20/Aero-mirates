package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.paymentModel;
import model.searchModel;
import oracleConnection.WebConnection;
import oracleConnection.printingSQLExc;
import Servlet.bookingServlet;

/**
 * Servlet implementation class paymentServlet
 */
@WebServlet("/paymentServlet")
public class paymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private paymentModel payment;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public paymentServlet() {
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
	
	public int getRandom(int max){ 
    	return (int) (Math.random()*max);
    	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		HttpSession session = request.getSession();
		String paymentMode = request.getParameter("paymentMode");
		String amount = request.getParameter("amount");
		String bookingId = request.getParameter("bookingId");
		int Id = getRandom(1000);
		String paymentId = Integer.toString(Id);
		payment = new paymentModel(paymentId, paymentMode, amount, bookingId);
		
		try(Connection con = WebConnection.getConnection()) {
			
			String insert = "INSERT INTO Payment" +"(paymentId, paymentMode, amount, bookingId)VALUES" +
					"(?,?,?,?)";
			PreparedStatement st = con.prepareStatement(insert);
			st.setString(1, paymentId);
			st.setString(2, payment.getPaymentMode());
			st.setString(3, payment.getAmount());
			st.setString(4, payment.getBookingId());
			int rs = st.executeUpdate();
			if(rs == 1) {
				String seat = searchModel.seat;
				String scheduleId = bookingServlet.getScheduleId();
				String dltSeat = "UPDATE Schedules SET capacity="+(Integer.parseInt(seat)-1)+" WHERE scheduleId='"+scheduleId+"'";
				Statement query = con.createStatement();
				query.executeUpdate(dltSeat);
				System.out.println("Thank you for your purchase!");
				session.setAttribute("paid", "Successful");
				response.sendRedirect("/TravelAgency/allJSPclasses/userScreen.jsp");
			} else {
				session.setAttribute("paid", "Failed");
				response.sendRedirect("/TravelAgency/allJSPclasses/payment.jsp");
			}
			
			
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		
	}

}

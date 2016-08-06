package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;

import model.*;

import java.sql.*;

/**
 * Servlet implementation class updatecartquantity
 */
@WebServlet("/updatecartquantity")
public class updatecartquantity extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public updatecartquantity() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String GameID = request.getParameter("id_Game");

		String quantity = request.getParameter("quantity");

		HttpSession session = request.getSession();
		

		ArrayList<Item> cart = (ArrayList<Item>) session
				.getAttribute("shoppingcart");
		boolean updated = false;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String connURL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";

			Connection conn = DriverManager.getConnection(connURL);
			PreparedStatement pstmt = conn
					.prepareStatement("Select * from games where id_Game=?");
			pstmt.setString(1, GameID);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
			String storequantity = rs.getString("quantity");
			
		for (Item i : cart) {

			Games g = i.getGame();
			if (Integer.parseInt(GameID) == g.getId_Game()) {
				if (Integer.parseInt(quantity) > 0 && Integer.parseInt(quantity)<Integer.parseInt(storequantity)) {
					i.setQuantity(Integer.parseInt(quantity));
					updated = true;
					break;
				}

			}
		}
		}
		if (!updated) {
			request.setAttribute("error", "Please enter a valid quantity!Or stock is not enough.");
			RequestDispatcher r = request
					.getRequestDispatcher("displaycart.jsp");
			r.forward(request, response);
		} else {
			response.sendRedirect("displaycart.jsp");
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

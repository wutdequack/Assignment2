package controller;

import java.io.IOException;

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
 * Servlet implementation class add2cart
 */
@WebServlet("/add2cart")
public class add2cart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public add2cart() {
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
		HttpSession session = request.getSession();
		ArrayList<Item> cart = (ArrayList<Item>) session.getAttribute("shoppingcart");
		if (cart == null) {
			cart = new ArrayList<Item>();
		}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String connURL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";

			Connection conn = DriverManager.getConnection(connURL);
			PreparedStatement pstmt = conn
					.prepareStatement("Select * from games where id_Game=?");
			pstmt.setString(1, GameID);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				boolean isincart = false;
				for (Item i : cart) {
					Games g = i.getGame();
					int q = i.getQuantity();
					int gid = g.getId_Game();
					if (gid == Integer.parseInt(GameID)) {
						i.setQuantity(q + 1);
						isincart = true;
						break;
					}
				}

				if (!isincart) {
					Games g = new Games(rs.getInt("id_Game"),
							rs.getString("game_Title"), rs.getDouble("price"),
							rs.getString("image"));
					Item item = new Item(g, 1);
					cart.add(item);
				}
			}

			response.sendRedirect("displaycart.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		session.setAttribute("shoppingcart", cart);
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

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
 * Servlet implementation class removefromcart
 */
@WebServlet("/removefromcart")
public class removefromcart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public removefromcart() {
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
		for (Item i : cart) {
			Games g = i.getGame();
			if (Integer.parseInt(GameID) == g.getId_Game()) {
				cart.remove(i);
				break;
			}
		}

		response.sendRedirect("displaycart.jsp");

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

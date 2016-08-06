package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;


/**
 * Servlet implementation class checkout
 */
@WebServlet("/checkout")
public class checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		 int memberid =(int)session.getAttribute("memid");
		ArrayList<Item> cart = (ArrayList<Item>) session.getAttribute("shoppingcart");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String connURL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";

			Connection conn = DriverManager.getConnection(connURL);
			
			PreparedStatement pstmt1 = conn.prepareStatement("INSERT INTO transactions(memberid)VALUES(?)",Statement.RETURN_GENERATED_KEYS);
			pstmt1.setInt(1,memberid);
			pstmt1.executeUpdate();
			ResultSet rs = pstmt1.getGeneratedKeys();
			if(rs.next()){
				int transactionid = rs.getInt(1);
				for(Item i :cart){
					Games g = i.getGame();
					int GameID = g.getId_Game();
					int quantity = i.getQuantity();
					
					
					PreparedStatement pstmt = conn.prepareStatement("INSERT INTO transaction_games(transactionid,id_Game,gamesquantity)VALUES(?,?,?)");
					pstmt.setInt(1, transactionid);
					pstmt.setInt(2, GameID);
					pstmt.setInt(3,quantity);
					pstmt.executeUpdate();
				}
			}
			response.sendRedirect("indexMem.jsp");
			conn.close();
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			PrintWriter out = response.getWriter();
			out.println(e);
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}

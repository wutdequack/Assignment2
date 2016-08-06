package controller;

import java.io.IOException;

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
 * Servlet implementation class transaction
 */
@WebServlet("/transaction")
public class transaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public transaction() {
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
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String connURL = "jdbc:mysql://cqr.softether.net:3306/Jontus?user=root&password=EADBestModule";

			Connection conn = DriverManager.getConnection(connURL);
			PreparedStatement pstmt = conn
					.prepareStatement("Select * from members where memberid = ?");
			pstmt.setInt(1,memberid);
			ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			String membername = rs.getString("membername");
			String mailingaddress = rs.getString("mailingaddress");
			String contactnumber = rs.getString("contactnumber");
			String Memberinfo [] = {membername,mailingaddress,contactnumber};
			
			request.setAttribute("Memberinfo", Memberinfo);
			RequestDispatcher c = request.getRequestDispatcher("transaction.jsp");
			
			c.forward(request, response);
		}
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
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

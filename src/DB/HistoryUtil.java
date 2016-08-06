package DB;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.GameHist;

import java.sql.*;
import java.util.ArrayList;


public class HistoryUtil {
	public void History(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		int id =(int)session.getAttribute("memid");
		ArrayList<GameHist> ginfo = new ArrayList<GameHist>();
		try {
			Connection conn = DBConn.getConnection();
			PreparedStatement pstmt= conn.prepareStatement("SELECT g.game_Title, g.price, g.quantity, g.release_Date FROM games g, transaction_games tg, transactions t WHERE g.id_Game = tg.id_Game AND tg.transactionid = t.transactionid AND t.memberid=?");
			pstmt.setInt(1,id);
			ResultSet rs= pstmt.executeQuery();
			while (rs.next()){
				String intitle = rs.getString("g.game_Title");
				int inprice = rs.getInt("g.price");
				int inquantity = rs.getInt("g.quantity");
				String indate = rs.getString("g.release_Date");
				 
				GameHist GameHist = new GameHist();
				GameHist.setTitle(intitle);
				GameHist.setDate(indate);
				GameHist.setPrice(inprice);
				GameHist.setQty(inquantity);

				ginfo.add(GameHist);
			}
			session.setAttribute("g",ginfo);
			conn.close();
			response.sendRedirect("HistoryController");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
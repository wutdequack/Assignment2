package DB;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.util.ArrayList;

import member.GameHist;
import member.MemberDetails;

public class UpdateUtil {
	public void UpdateUser(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		int id =(int)session.getAttribute("memid");
		ArrayList<MemberDetails> minfo = new ArrayList<MemberDetails>();
		try {
			Connection conn = DBConn.getConnection();
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM members WHERE memberid =?");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				String name = rs.getString("membername");
				String user = rs.getString("memberemail");
				String addr = rs.getString("mailingaddr");
				int no = rs.getInt("contactnumber");
				String pwd = rs.getString("memberpassword");
				
				MemberDetails MemberDetails = new MemberDetails();
				MemberDetails.setMemname(name);
				MemberDetails.setMememail(user);
				MemberDetails.setMailingadd(addr);
				MemberDetails.setNo(no);
				MemberDetails.setMempwd(pwd);
				
				minfo.add(MemberDetails);
			}
			session.setAttribute("m",minfo);
			conn.close();
			response.sendRedirect("UpdateUserController");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		MemberDetails details = (MemberDetails)session.getAttribute("UpdateDetails");
		String addr = details.getMailingadd();
		String user = details.getMememail();
		String name = details.getMemname();
		String pwd = details.getMempwd();
		int no = details.getNo();
		
		int memid =(int)session.getAttribute("memid");
		
		try {
			Connection conn2 = DBConn.getConnection();
			PreparedStatement pstmt2 = conn2.prepareStatement("UPDATE members SET membername=?, memberemail=?, mailingaddress=?, contactnumber=?, memberpassword=? WHERE memberid=?");
			pstmt2.setString(1,name);
			pstmt2.setString(2,user);
			pstmt2.setString(3,addr);
			pstmt2.setInt(4,no);
			pstmt2.setString(5,pwd);
			pstmt2.setInt(6,memid);
			pstmt2.executeUpdate();
			response.sendRedirect("UpdateUserController");
			conn2.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

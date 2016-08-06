package DB;

import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

import member.MemberDetails;

public class LoginUtil {
	public void LoginUser(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		MemberDetails valid = (MemberDetails)session.getAttribute("valid");
		String userIn = valid.getMememail();
		String pwdIn = valid.getMempwd();
		
		try {
			Connection conn = DBConn.getConnection();
			PreparedStatement pstmt = conn.prepareStatement("SELECT memberid, memberemail, memberpassword, isAdmin FROM members WHERE memberemail = ? && memberpassword = ?");
			pstmt.setString(1, userIn);
			pstmt.setString(2, pwdIn);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()){
				int isAdmin = rs.getInt("isAdmin");
				if (isAdmin == 0){
					int id = rs.getInt("memberid");
					HttpSession MemSession = request.getSession();
					//remember to place redirect... tmp place to index.jsp
					response.sendRedirect("indexMem.jsp");
					MemSession.setAttribute("memlo", "1");
					MemSession.setAttribute("memid", id);
				} else {
					HttpSession AdminSession = request.getSession();
					//remember to place redirect... tmp place to indexadmin.jsp
					response.sendRedirect("indexadmin.jsp");
					AdminSession.setAttribute("adlo", "1");
					conn.close();
				}
			}else{
				request.getSession().setAttribute("fail", "Login has failed! Please try again!!");
				response.sendRedirect("Register.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

package DB;

import java.io.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

import member.MemberDetails;


public class RegistrationUtil {
	public void CreateUser(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		MemberDetails details = (MemberDetails)session.getAttribute("details") ;
		String addr = details.getMailingadd();
		String user = details.getMememail();
		String name = details.getMemname();
		String pwd = details.getMempwd();
		int no = details.getNo();
		int admin = details.getIsAdmin();
		
		try {
			Connection conn = DBConn.getConnection();
			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO members (membername, memberemail, mailingaddress, contactnumber, memberpassword, isAdmin)VALUES (?,?,?,?,?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, user);
			pstmt.setString(3, addr);
			pstmt.setInt(4, no);
			pstmt.setString(5, pwd);
			pstmt.setInt(6, admin);
			pstmt.executeUpdate();
			conn.close();
			response.sendRedirect("Register.jsp");
			request.getSession().setAttribute("success", "Success!");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}

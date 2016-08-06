package member;

import javax.servlet.http.HttpSession;

public class UserFunctions {
	public static boolean userLoggedin(HttpSession session) {
		return (session.getAttribute("memlo") != null && session.getAttribute("memlo").equals("1"));
	}
}

package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.RegistrationUtil;
import DB.UpdateUtil;

/**
 * Servlet implementation class UpdateUserController
 */
@WebServlet("/UpdateUserController")
public class UpdateUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String user = request.getParameter("user");
		String pwd = request.getParameter("pwd");
		String no = request.getParameter("no");
		int num = Integer.parseInt(no);
		String addr = request.getParameter("addr");
		String errMsg ="";
		if(name.isEmpty()){
			System.out.println("1");
			errMsg="Error! Null value in Name";
			request.getSession().setAttribute("error", errMsg);
			response.sendRedirect("Register.jsp");
			}else if(user.isEmpty()){
				System.out.println("2");
				errMsg="Error! Null value in Email";
				request.getSession().setAttribute("error", errMsg);
				response.sendRedirect("Register.jsp");
			}else if (user.indexOf("@") < -1 ){
				System.out.println("3");
				errMsg = "Error! No '@' symbol in email";
				request.getSession().setAttribute("error", errMsg);
				response.sendRedirect("Register.jsp");
			}else if (user.indexOf(".")<-1) {
				System.out.println("4");
				errMsg = "Error! No '.' symbol found in email";
				request.getSession().setAttribute("error", errMsg);
				response.sendRedirect("Register.jsp");
			} else if (pwd.isEmpty()){
				System.out.println("5");
				errMsg = "Error! Null value in Password";
				request.getSession().setAttribute("error", errMsg);
				response.sendRedirect("Register.jsp");
			}	else if (pwd.length()<8 || pwd.length()>16){
				System.out.println("6");
				errMsg ="Error! Password length is lesser than 8 and more than 16 characters!";
				request.getSession().setAttribute("error", errMsg);
				response.sendRedirect("Register.jsp");
			} else if(!pwd.matches("^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$")){
				System.out.println("7");
				errMsg = "Error! The password is not alphanumeric!";
				request.getSession().setAttribute("error", errMsg);
				response.sendRedirect("Register.jsp");
			} else if(addr.isEmpty()){
				System.out.println("8");
				errMsg="Error! Null value in Mailing Address";
				request.getSession().setAttribute("error", errMsg);
				response.sendRedirect("Register.jsp");
			} else if(no.isEmpty()){
				System.out.println("9");
				errMsg="Error! Null value in Contact Number";
				request.getSession().setAttribute("error", errMsg);
				response.sendRedirect("Register.jsp");
			} else if(no.length()>8||no.length()<8){
				System.out.println("10");
				errMsg="Error! Contact Number must contain only 8 characters. Please try again!";
				request.getSession().setAttribute("error", errMsg);
				response.sendRedirect("Register.jsp");
			}
				else{
			MemberDetails md = new MemberDetails();
			md.setMailingadd(addr);
			md.setMememail(user);
			md.setMemname(name);
			md.setMempwd(pwd);
			md.setNo(num);
			
			HttpSession mySession = request.getSession();
			mySession.setAttribute("UpdateDetails", md);
			UpdateUtil up = new UpdateUtil();
			up.UpdateUser(request,response);
			response.sendRedirect("modifyUser.jsp");
			response.sendRedirect("modifyUser.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

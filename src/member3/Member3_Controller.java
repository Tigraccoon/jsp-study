package member3;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Member3_Servlet/*")
public class Member3_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		HttpSession session = request.getSession();
		Member3DAO dao = new Member3DAO();
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		session.setAttribute("userid", userid);
		System.out.println(userid);
		String message = "";
		String page = "";
		if(uri.indexOf("login.do") != -1) {	//login
			HashMap<String, Object> userInfo = dao.getUserInfo(userid, pwd);
			Member3DTO dto = (Member3DTO)userInfo.get(userid);
			String name = dto.getName();
			System.out.println(name);
			if(name.equals("아이디가 없습니다!!")) {	//로그인 실패
				message = "로그인 실패.. 아이디를 확인하세요!";
				session.setAttribute("message", message);
				page = "/member3/login.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
				
			} else {	//로그인 성공
				message="로그인 성공~";
				session.setAttribute("message", message);
				session.setAttribute(userid, dto);
				page = "/member3/login_succeed.jsp";
				System.out.println("로그인성공");
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
			}
			
		} else if(uri.indexOf("logout.do") != -1) {	//logout
			session.invalidate();
			session = request.getSession();
			message = "로그아웃 하였습니다~";
			session.setAttribute("message", message);
			page = "/member3/login.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package ch02;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.MemberDAO;

@WebServlet("/ch02_servlet/*")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		System.out.println(request.getRequestURL());
		System.out.println(request.getRequestURI());
		String context = request.getContextPath();
		System.out.println("context : " + context);
		String uri = request.getRequestURI();
		HttpSession session = request.getSession();
		
		if(uri.indexOf("login.do") != -1) {	//longin.do로 들어왔다면?
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			System.out.println(userid);
			System.out.println(passwd);
			
			MemberDAO dao = new MemberDAO();
			String name = dao.loginCheck(userid, passwd);
			String message="";
			String page="";
			if(name == null) {
				message="로그인 실패! 아이디와 비밀번호를 확인해라!";
				message=URLEncoder.encode(message, "utf-8");
				page="/ch02/sessionTestForm.jsp?message="+message;
			} else {
				message=name+"! 로그인 성공!";
				session.setAttribute("userid", userid);
				session.setAttribute("message", message);
				page="/ch02/session_success.jsp";
			}
			System.out.println("message : "+message);
			response.sendRedirect(context+page);
			
		}else if(uri.indexOf("logout.do") != -1) {
			session.invalidate();	//session 초기화
			String message = URLEncoder.encode("logout..", "utf-8");
			response.sendRedirect(context+"/ch02/sessionTestForm.jsp?message="+message);		
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

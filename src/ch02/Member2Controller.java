package ch02;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member2.Member2DAO;
import member2.Member2DTO;

@WebServlet("/Member2_Servlet/*")
public class Member2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String uri = request.getRequestURI();
		String page="";

		if(uri.indexOf("login.do") != -1) {
			String userid = request.getParameter("userid");
			String pwd = request.getParameter("pwd");

			Member2DAO dao = new Member2DAO();
			HashMap<String,Object> userInfo = dao.getUserInfomation(userid, pwd);

			Member2DTO dto = (Member2DTO)userInfo.get(userid);
			String name = dto.getName();
			String message = "";
			System.out.println("name : " + name);
			if(name.equals("아이디 없음!")) {
				message = "로그인 실패..";
				session.setAttribute("message", message);
				page = "/member2/login.jsp";
				System.out.println("로그인실패");
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
			} else {
				session.setAttribute("userid", userid);
				session.setAttribute(userid, dto);
				message = "로그인 성공!";
				session.setAttribute("message", message);
				page = "/member2/login_success.jsp";
				System.out.println("로그인성공");
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
			}
		} else if(uri.indexOf("logout.do") != -1){
			session.invalidate();
			session = request.getSession();
			session.setAttribute("message", "로그아웃 되었습니다!");
			page = "/member2/login.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

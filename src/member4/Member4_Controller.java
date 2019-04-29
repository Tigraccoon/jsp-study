package member4;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member4_Servlet/*")
public class Member4_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String uri = request.getRequestURI();
		String message = "";
		
		if(uri.indexOf("login.do") != -1) {	//로그인
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			Member4DAO dao = new Member4DAO();
			HashMap<String,Object> userInfo = dao.getUserInfo(id, pwd);
			Member4DTO dto = (Member4DTO)userInfo.get(id);

			if(dto.getName() == "아이디가 없으요~~!!!") {	//로그인 실패
				message = "로그인에 실패했어요.. 다시 확인하세요!";
				request.setAttribute("message", message);
				
				RequestDispatcher rd = request.getRequestDispatcher("/member4/login.jsp");
				rd.forward(request, response);
			} else {	//로그인 성공
				session.setAttribute(id, dto);
				session.setAttribute("id", id);
				request.setAttribute("message", "로그인 성공!");
				RequestDispatcher rd = request.getRequestDispatcher("/member4/login_succeed.jsp");
				rd.forward(request, response);
				
			}
			
		} else if(uri.indexOf("logout.do") != -1) {	//로그아웃
			session.invalidate();
			message = "로그아웃 했어요!";
			request.setAttribute("message", message);
			RequestDispatcher rd = request.getRequestDispatcher("/member4/login.jsp");
			rd.forward(request, response);
		}
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

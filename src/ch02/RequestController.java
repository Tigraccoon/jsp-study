package ch02;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch02_servlet/request.do")
public class RequestController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//문자 인코딩 설정
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String hobby = request.getParameter("hobby");
		
		//Map : 순서x, 빠른 검색을 위해 사용
		//List : 순서o
		//LinkedList - 추가 삭제가 빈번한 자료
		//Set : 순서x, 중복값 필터
		
		//Map<Key, Value>
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("age", age);
		gender = gender.equals("m") ? "남" : "여";
		map.put("gender", gender);
		map.put("hobby", hobby);
		
		System.out.println(map);
		
		request.setAttribute("map", map);
		String page = "/ch02/request_result2.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

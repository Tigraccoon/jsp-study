package ch03;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/ForwardController")
public class ForwardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String[] hobby = request.getParameterValues("hobby");
		String dish = request.getParameter("dish");
		String message = "";
		switch(color) {
		case "blue" : message="자기탐구와 내적성장을 상징"; break;
		case "green" : message="기분의 안정과 온화함을 상징"; break;
		case "red" : message=""; break;
		}
		message+= "하는 색입니다.";
		
		Map<String,Object> map = new HashMap<>();
		map.put("name", name);
		map.put("color", color);
		map.put("message", message);
		map.put("hobby", hobby);
		map.put("dish", dish);
		
		request.setAttribute("map", map);
		
		RequestDispatcher rd = request.getRequestDispatcher("/ch03/color.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

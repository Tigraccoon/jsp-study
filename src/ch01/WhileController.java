package ch01;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*
 * 	MVC모델 2방식 :
 * 	Model - 데이터 처리 (DAO, DTO)
 * 	View - 화면 출력 (jsp)
 * 	Controller - 프로그램의 흐름 제어(Servlet)
 * 	
 * 	@ : Annotation : 코드에 대한 주석, 매핑시,, 시스템에 영향을 주는 시스템용 주석? 최신 기술이며 최근들어 많이 사용함?
 */

//@WebServlet("/WhileController")
public class WhileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//get방식으로 호출하면? 아래의 메소드가 실행
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
							throws ServletException, IOException {
		int number = Integer.parseInt(request.getParameter("number"));
		int num = Integer.parseInt(request.getParameter("num"));
		int result=1;
		
		for(int i=1 ; i<=num; i++) {
			result *= number;
		}
		System.out.println("결과? : " + result);
		request.setAttribute("result", result);	//key, value(object type)
		
		//request.getRequestDispatcher("경로") :ㅣ 이동할 url의 정보를 분석하는 객체, 거의 공식처럼 사용?
		RequestDispatcher rd = request.getRequestDispatcher("/ch01/while_result.jsp");
		
		rd.forward(request, response);
		//화면이 while_result.jsp로 전환(url 주소는 그대로!)
	}
	
	
	//post방식으로 호출하면? 아래의 메소드가 실행
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
							throws ServletException, IOException {
		
		doGet(request, response);	//post로 요청해도 doGet을 호출해서 처리
	}

}

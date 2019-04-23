package homework;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class HomeworkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("HomeworkServlet_doPost is online~~");
		
		HomeworkDAO dao = new HomeworkDAO();
		ArrayList<HomeworkDTO> items = dao.homework_list();
		
		request.setAttribute("homework_list", items);
		
		RequestDispatcher rd = request.getRequestDispatcher("/homework/homework_list.jsp");
		rd.forward(request, response);
	}
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("HomeworkServlet_doPut is online~~");
		
		
		HomeworkDTO dto = new HomeworkDTO();
		HomeworkDAO dao = new HomeworkDAO();
		
		int result = dao.upload(dto);
		if(result == 1) {
			System.out.println("새로운 회원 업로드");
		} else {
			System.out.println("회원 업로드 에러");
		}
		
	}
}

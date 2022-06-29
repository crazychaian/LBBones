package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DoctorDAO;
import model.DoctorVO;

@WebServlet("/idcheckService")
public class idcheckService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		// 1. 파라미터 수집
		String doc_id = request.getParameter("doc_id");

		// 2. DAO 메서드 사용
		DoctorDAO dao = new DoctorDAO();
		DoctorVO vo = dao.idCheck(doc_id);

		// 3. 결과 응답
		// 응답 형식 지정
		response.setContentType("text/html; charset = utf-8");

		// out 객체 만들기
		PrintWriter out = response.getWriter();

		// 응답
		out.print(vo == null);
	
	}

}

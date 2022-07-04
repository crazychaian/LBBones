package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DoctorDAO;
import model.DoctorVO;

@WebServlet("/joinService")
public class joinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String hos_name = request.getParameter("join_hos_name");
		String doc_name = request.getParameter("join_doc_name");
		String doc_id = request.getParameter("join_doc_id");
		String doc_pw = request.getParameter("join_doc_pw");

		DoctorVO dvo = new DoctorVO();
		dvo.setHos_name(hos_name);
		dvo.setDoc_name(doc_name);
		dvo.setDoc_id(doc_id);
		dvo.setDoc_pw(doc_pw);

		DoctorDAO dao = new DoctorDAO();
		int cnt = dao.join(dvo);

		if(cnt > 0) {
			
			HttpSession session = request.getSession();
			session.setAttribute("dvo", dvo);
			response.sendRedirect("customer.jsp"); // 회원가입 환영 합니다 페이지
		
		}else {
			
			System.out.println("회원가입 실패");
			
		}

	}

}

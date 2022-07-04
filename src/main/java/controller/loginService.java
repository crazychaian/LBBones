package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CustomerDAO;
import model.CustomerVO;
import model.DoctorDAO;
import model.DoctorVO;

@WebServlet("/loginService")
public class loginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String doc_id = request.getParameter("doc_id");
		String doc_pw = request.getParameter("doc_pw");

		DoctorVO dvo = new DoctorVO(doc_id, doc_pw);

		DoctorDAO dao = new DoctorDAO();
		DoctorVO vo = dao.login(dvo);
		
		DoctorVO ndvo = dao.doccntFind(doc_id);
		int doc_cnt = ndvo.getDoc_cnt();
		
		CustomerDAO cdao = new CustomerDAO();
		List<CustomerVO> cusList = cdao.cusList(doc_cnt);

		request.setAttribute("cusList", cusList);

		if (vo == null) {
			response.sendRedirect("customer.jsp");
			System.out.println("½ÇÆÐ");

		} else {

			HttpSession session1 = request.getSession();
			session1.setAttribute("vo", vo);
			
			HttpSession session2 = request.getSession();
			session2.setAttribute("cusList", cusList);
			
			response.sendRedirect("customer.jsp");
		}

	}

}

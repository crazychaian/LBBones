package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DoctorDAO;
import model.DoctorVO;

@WebServlet("/loginService")
public class loginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		String doc_id = request.getParameter("doc_id");
		String doc_pw = request.getParameter("doc_pw");

		DoctorVO dvo = new DoctorVO(doc_id, doc_pw);

		DoctorDAO dao = new DoctorDAO();
		DoctorVO vo = dao.login(dvo);

		if (vo == null) {
			response.sendRedirect("logsign.jsp");

		} else {
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);
			response.sendRedirect("main.jsp");
		}

	}

}

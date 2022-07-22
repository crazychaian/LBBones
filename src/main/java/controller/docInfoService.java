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

@WebServlet("/docInfoService")
public class docInfoService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String doc_id = request.getParameter("doc_id");

		DoctorDAO dao = new DoctorDAO();
		DoctorVO vo = dao.docvo(doc_id);

		HttpSession session = request.getSession();
		session.setAttribute("vo", vo);
		response.sendRedirect("memberHome-Real.jsp");

	}

}

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

@WebServlet("/joinService")
public class joinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		String hos_name = request.getParameter("hos_name");
		String doc_name = request.getParameter("doc_name");
		String doc_id = request.getParameter("doc_id");
		String doc_pw = request.getParameter("doc_pw");

		DoctorVO dvo = new DoctorVO();
		dvo.setHos_name(hos_name);
		dvo.setDoc_name(doc_name);
		dvo.setDoc_id(doc_id);
		dvo.setDoc_pw(doc_pw);

		DoctorDAO dao = new DoctorDAO();
		int cnt = dao.join(dvo);

		response.setContentType("text/html; charset = utf-8");

		PrintWriter out = response.getWriter();

		out.print(cnt);

	}

}

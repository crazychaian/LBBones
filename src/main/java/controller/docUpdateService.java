package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DoctorDAO;
import model.DoctorVO2;

@WebServlet("/docUpdateService")
public class docUpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");

		String doc_id = request.getParameter("doc_id");
		String doc_pw = request.getParameter("doc_pw");
		String doc_name = request.getParameter("doc_name");
		String doc_hospital = request.getParameter("doc_hospital");

		DoctorVO2 dvo = new DoctorVO2(doc_id, doc_pw, doc_name, doc_hospital);

		DoctorDAO dao = new DoctorDAO();
		int cnt = dao.docUpdate(dvo);

		response.setContentType("text/html; charset = utf-8");

		PrintWriter out = response.getWriter();

		out.print(cnt);
		
	}

}

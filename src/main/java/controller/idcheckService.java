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

		request.setCharacterEncoding("utf-8");

		String doc_id = request.getParameter("doc_id");

		DoctorDAO dao = new DoctorDAO();
		DoctorVO dvo = dao.idCheck(doc_id);

		response.setContentType("text/html; charset = utf-8");

		PrintWriter out = response.getWriter();

		out.print(dvo == null);
	
	}

}

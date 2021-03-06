package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.DoctorDAO;
import model.DoctorVO;

@WebServlet("/joinService")
public class joinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String doc_id = request.getParameter("doc_id");
		String doc_pw = request.getParameter("doc_pw");
		String doc_name = request.getParameter("doc_name");
		String doc_hospital = request.getParameter("doc_hospital");

		DoctorVO dvo = new DoctorVO();
		dvo.setDoc_id(doc_id);
		dvo.setDoc_pw(doc_pw);
		dvo.setDoc_name(doc_name);
		if (doc_hospital.equals("")) {
			dvo.setDoc_hospital("소속병원 없음");
		} else {
			dvo.setDoc_hospital(doc_hospital);
		}
		dvo.setMem_type("D");

		DoctorDAO dao = new DoctorDAO();
		int cnt = dao.join(dvo);

		response.setContentType("text/html; charset=utf-8");

		PrintWriter out = response.getWriter();

		out.print(cnt);

	}

}

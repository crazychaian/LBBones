package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

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
		System.out.println(doc_id + doc_pw);

		DoctorVO dvo = new DoctorVO(doc_id, doc_pw);
		System.out.println(dvo);

		DoctorDAO dao = new DoctorDAO();
		DoctorVO vo = dao.login(dvo);
		System.out.println(vo);
		
		Gson gson = new Gson();
		System.out.println(gson);
		
		String jsonvo = gson.toJson(vo);

		response.setContentType("text/html; charset=utf-8");

		PrintWriter out = response.getWriter();
		System.out.println(jsonvo);

		out.print(jsonvo);

	}
}

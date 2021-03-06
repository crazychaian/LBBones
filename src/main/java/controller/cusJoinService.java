package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CustomerDAO;
import model.CustomerVO;

@WebServlet("/cusJoinService")
public class cusJoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String doc_id = request.getParameter("doc_id");
		String p_name = request.getParameter("p_name");
		String p_birth = request.getParameter("p_birth");
		String p_gender = request.getParameter("p_gender");

		CustomerVO cvo = new CustomerVO();
		cvo.setDoc_id(doc_id);
		cvo.setP_name(p_name);
		cvo.setP_birth(p_birth);
		cvo.setP_gender(p_gender);

		CustomerDAO dao = new CustomerDAO();
		int cnt = dao.pJoin(cvo);

		response.setContentType("text/html; charset = utf-8");

		PrintWriter out = response.getWriter();

		out.print(cnt);

	}

}

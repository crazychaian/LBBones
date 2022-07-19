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

@WebServlet("/cusUpdateService")
public class cusUpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		int p_seq = Integer.parseInt(request.getParameter("p_seq"));
		String p_name = request.getParameter("p_name");
		String p_birth = request.getParameter("p_birth");
		String p_gender = request.getParameter("p_gender");

		CustomerVO cvo = new CustomerVO(p_seq, p_name, p_birth, p_gender);

		CustomerDAO dao = new CustomerDAO();
		int cnt = dao.pUpdate(cvo);

		response.setContentType("text/html; charset = utf-8");

		PrintWriter out = response.getWriter();

		out.print(cnt);

	}

}

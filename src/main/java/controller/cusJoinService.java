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

		int doc_cnt = Integer.parseInt(request.getParameter("doc_cnt"));
		String cus_name = request.getParameter("join_cus_name");
		String cus_birth = request.getParameter("join_cus_birth");
		String cus_mw = request.getParameter("join_cus_mw");

		CustomerVO cvo = new CustomerVO();
		cvo.setDoc_cnt(doc_cnt);
		cvo.setCus_name(cus_name);
		cvo.setCus_birth(cus_birth);

		if (cus_mw.equals("man")) {
			cvo.setCus_mw("남성");
		} else if (cus_mw.equals("woman")) {
			cvo.setCus_mw("여성");
		}

		CustomerDAO dao = new CustomerDAO();
		int cnt = dao.cusJoin(cvo);

		response.setContentType("text/html; charset = utf-8");

		PrintWriter out = response.getWriter();

		out.print(cnt);

	}

}
